.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.1.4"

.field private static sSharedValues:Landroidx/constraintlayout/widget/t;


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

.field private mConstraintSet:Landroidx/constraintlayout/widget/o;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/p;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Lq/e;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/e;

.field private mMetrics:Lo/e;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lq/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lq/e;

    invoke-direct {p1}, Lq/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    new-instance p1, Lq/e;

    invoke-direct {p1}, Lq/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    return p0
.end method

.method public static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/t;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/t;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/t;

    .line 21
    .line 22
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/t;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 2
    .line 3
    iput-object p0, v0, Lq/d;->f0:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 6
    .line 7
    iput-object v1, v0, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    .line 8
    .line 9
    iget-object v0, v0, Lq/e;->s0:Lr/e;

    .line 10
    .line 11
    iput-object v1, v0, Lr/e;->f:Landroidx/constraintlayout/widget/e;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Landroidx/constraintlayout/widget/s;->b:[I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    move v1, v3

    .line 43
    :goto_0
    if-ge v1, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/16 v4, 0x10

    .line 50
    .line 51
    if-ne v2, v4, :cond_0

    .line 52
    .line 53
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 54
    .line 55
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    const/16 v4, 0x11

    .line 63
    .line 64
    if-ne v2, v4, :cond_1

    .line 65
    .line 66
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 67
    .line 68
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    const/16 v4, 0xe

    .line 76
    .line 77
    if-ne v2, v4, :cond_2

    .line 78
    .line 79
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 80
    .line 81
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/16 v4, 0xf

    .line 89
    .line 90
    if-ne v2, v4, :cond_3

    .line 91
    .line 92
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 93
    .line 94
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/16 v4, 0x71

    .line 102
    .line 103
    if-ne v2, v4, :cond_4

    .line 104
    .line 105
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 106
    .line 107
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const/16 v4, 0x38

    .line 115
    .line 116
    if-ne v2, v4, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/16 v4, 0x22

    .line 132
    .line 133
    if-ne v2, v4, :cond_6

    .line 134
    .line 135
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    :try_start_1
    new-instance v4, Landroidx/constraintlayout/widget/o;

    .line 140
    .line 141
    invoke-direct {v4}, Landroidx/constraintlayout/widget/o;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5, v2}, Landroidx/constraintlayout/widget/o;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    .line 155
    .line 156
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 157
    .line 158
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 165
    .line 166
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 167
    .line 168
    iput p2, p1, Lq/e;->D0:I

    .line 169
    .line 170
    const/16 p2, 0x200

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lq/e;->X(I)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    sput-boolean p1, Lo/d;->p:Z

    .line 177
    .line 178
    return-void
.end method

.method public applyConstraintsFromLayoutParams(ZLandroid/view/View;Lq/d;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lq/d;",
            "Landroidx/constraintlayout/widget/d;",
            "Landroid/util/SparseArray<",
            "Lq/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move-object/from16 v8, p5

    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/d;->a()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, v6, Lq/d;->g0:I

    .line 17
    .line 18
    iput-object v0, v6, Lq/d;->f0:Ljava/lang/Object;

    .line 19
    .line 20
    instance-of v1, v0, Landroidx/constraintlayout/widget/b;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    check-cast v0, Landroidx/constraintlayout/widget/b;

    .line 25
    .line 26
    move-object/from16 v9, p0

    .line 27
    .line 28
    iget-object v1, v9, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 29
    .line 30
    iget-boolean v1, v1, Lq/e;->v0:Z

    .line 31
    .line 32
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/b;->h(Lq/d;Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object/from16 v9, p0

    .line 37
    .line 38
    :goto_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->d0:Z

    .line 39
    .line 40
    const/4 v10, -0x1

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    move-object v0, v6

    .line 44
    check-cast v0, Lq/h;

    .line 45
    .line 46
    iget v1, v7, Landroidx/constraintlayout/widget/d;->m0:I

    .line 47
    .line 48
    iget v2, v7, Landroidx/constraintlayout/widget/d;->n0:I

    .line 49
    .line 50
    iget v3, v7, Landroidx/constraintlayout/widget/d;->o0:F

    .line 51
    .line 52
    const/high16 v4, -0x40800000    # -1.0f

    .line 53
    .line 54
    cmpl-float v5, v3, v4

    .line 55
    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    if-lez v5, :cond_2b

    .line 59
    .line 60
    iput v3, v0, Lq/h;->q0:F

    .line 61
    .line 62
    iput v10, v0, Lq/h;->r0:I

    .line 63
    .line 64
    iput v10, v0, Lq/h;->s0:I

    .line 65
    .line 66
    goto/16 :goto_16

    .line 67
    .line 68
    :cond_1
    if-eq v1, v10, :cond_2

    .line 69
    .line 70
    if-le v1, v10, :cond_2b

    .line 71
    .line 72
    iput v4, v0, Lq/h;->q0:F

    .line 73
    .line 74
    iput v1, v0, Lq/h;->r0:I

    .line 75
    .line 76
    iput v10, v0, Lq/h;->s0:I

    .line 77
    .line 78
    goto/16 :goto_16

    .line 79
    .line 80
    :cond_2
    if-eq v2, v10, :cond_2b

    .line 81
    .line 82
    if-le v2, v10, :cond_2b

    .line 83
    .line 84
    iput v4, v0, Lq/h;->q0:F

    .line 85
    .line 86
    iput v10, v0, Lq/h;->r0:I

    .line 87
    .line 88
    iput v2, v0, Lq/h;->s0:I

    .line 89
    .line 90
    goto/16 :goto_16

    .line 91
    .line 92
    :cond_3
    iget v0, v7, Landroidx/constraintlayout/widget/d;->f0:I

    .line 93
    .line 94
    iget v1, v7, Landroidx/constraintlayout/widget/d;->g0:I

    .line 95
    .line 96
    iget v11, v7, Landroidx/constraintlayout/widget/d;->h0:I

    .line 97
    .line 98
    iget v12, v7, Landroidx/constraintlayout/widget/d;->i0:I

    .line 99
    .line 100
    iget v5, v7, Landroidx/constraintlayout/widget/d;->j0:I

    .line 101
    .line 102
    iget v13, v7, Landroidx/constraintlayout/widget/d;->k0:I

    .line 103
    .line 104
    iget v14, v7, Landroidx/constraintlayout/widget/d;->l0:F

    .line 105
    .line 106
    iget v2, v7, Landroidx/constraintlayout/widget/d;->p:I

    .line 107
    .line 108
    const/4 v4, 0x2

    .line 109
    const/4 v3, 0x5

    .line 110
    const/4 v15, 0x0

    .line 111
    if-eq v2, v10, :cond_5

    .line 112
    .line 113
    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    move-object v2, v0

    .line 118
    check-cast v2, Lq/d;

    .line 119
    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    iget v8, v7, Landroidx/constraintlayout/widget/d;->r:F

    .line 123
    .line 124
    iget v5, v7, Landroidx/constraintlayout/widget/d;->q:I

    .line 125
    .line 126
    const/4 v11, 0x7

    .line 127
    const/4 v12, 0x0

    .line 128
    move-object/from16 v0, p3

    .line 129
    .line 130
    move v1, v11

    .line 131
    move v13, v3

    .line 132
    move v3, v11

    .line 133
    move v11, v4

    .line 134
    move v4, v5

    .line 135
    move v5, v12

    .line 136
    invoke-virtual/range {v0 .. v5}, Lq/d;->w(ILq/d;III)V

    .line 137
    .line 138
    .line 139
    iput v8, v6, Lq/d;->D:F

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    move v13, v3

    .line 143
    move v11, v4

    .line 144
    :goto_1
    move/from16 v18, v11

    .line 145
    .line 146
    move/from16 v17, v13

    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_5
    if-eq v0, v10, :cond_7

    .line 151
    .line 152
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    move-object v2, v0

    .line 157
    check-cast v2, Lq/d;

    .line 158
    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 162
    .line 163
    move-object/from16 v0, p3

    .line 164
    .line 165
    move/from16 v16, v1

    .line 166
    .line 167
    move v1, v4

    .line 168
    move/from16 v17, v3

    .line 169
    .line 170
    move v3, v4

    .line 171
    move/from16 v18, v4

    .line 172
    .line 173
    move/from16 v4, v16

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    move/from16 v17, v3

    .line 177
    .line 178
    move/from16 v18, v4

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move/from16 v17, v3

    .line 182
    .line 183
    move/from16 v18, v4

    .line 184
    .line 185
    if-eq v1, v10, :cond_8

    .line 186
    .line 187
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    move-object v2, v0

    .line 192
    check-cast v2, Lq/d;

    .line 193
    .line 194
    if-eqz v2, :cond_8

    .line 195
    .line 196
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 197
    .line 198
    move-object/from16 v0, p3

    .line 199
    .line 200
    move/from16 v1, v18

    .line 201
    .line 202
    const/16 v16, 0x4

    .line 203
    .line 204
    move/from16 v3, v16

    .line 205
    .line 206
    :goto_2
    invoke-virtual/range {v0 .. v5}, Lq/d;->w(ILq/d;III)V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_3
    if-eq v11, v10, :cond_9

    .line 210
    .line 211
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move-object v2, v0

    .line 216
    check-cast v2, Lq/d;

    .line 217
    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 221
    .line 222
    move-object/from16 v0, p3

    .line 223
    .line 224
    const/4 v3, 0x4

    .line 225
    move v1, v3

    .line 226
    move/from16 v3, v18

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    if-eq v12, v10, :cond_a

    .line 230
    .line 231
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    move-object v2, v0

    .line 236
    check-cast v2, Lq/d;

    .line 237
    .line 238
    if-eqz v2, :cond_a

    .line 239
    .line 240
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 241
    .line 242
    move-object/from16 v0, p3

    .line 243
    .line 244
    const/4 v5, 0x4

    .line 245
    move v1, v5

    .line 246
    move v3, v5

    .line 247
    :goto_4
    move v5, v13

    .line 248
    invoke-virtual/range {v0 .. v5}, Lq/d;->w(ILq/d;III)V

    .line 249
    .line 250
    .line 251
    :cond_a
    iget v0, v7, Landroidx/constraintlayout/widget/d;->i:I

    .line 252
    .line 253
    if-eq v0, v10, :cond_b

    .line 254
    .line 255
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move-object v2, v0

    .line 260
    check-cast v2, Lq/d;

    .line 261
    .line 262
    if-eqz v2, :cond_c

    .line 263
    .line 264
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 265
    .line 266
    iget v5, v7, Landroidx/constraintlayout/widget/d;->x:I

    .line 267
    .line 268
    move-object/from16 v0, p3

    .line 269
    .line 270
    const/4 v11, 0x3

    .line 271
    move v1, v11

    .line 272
    move v3, v11

    .line 273
    goto :goto_5

    .line 274
    :cond_b
    iget v0, v7, Landroidx/constraintlayout/widget/d;->j:I

    .line 275
    .line 276
    if-eq v0, v10, :cond_c

    .line 277
    .line 278
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    move-object v2, v0

    .line 283
    check-cast v2, Lq/d;

    .line 284
    .line 285
    if-eqz v2, :cond_c

    .line 286
    .line 287
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 288
    .line 289
    iget v5, v7, Landroidx/constraintlayout/widget/d;->x:I

    .line 290
    .line 291
    move-object/from16 v0, p3

    .line 292
    .line 293
    const/4 v3, 0x3

    .line 294
    move v1, v3

    .line 295
    move/from16 v3, v17

    .line 296
    .line 297
    :goto_5
    invoke-virtual/range {v0 .. v5}, Lq/d;->w(ILq/d;III)V

    .line 298
    .line 299
    .line 300
    :cond_c
    iget v0, v7, Landroidx/constraintlayout/widget/d;->k:I

    .line 301
    .line 302
    if-eq v0, v10, :cond_d

    .line 303
    .line 304
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object v2, v0

    .line 309
    check-cast v2, Lq/d;

    .line 310
    .line 311
    if-eqz v2, :cond_e

    .line 312
    .line 313
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 314
    .line 315
    iget v5, v7, Landroidx/constraintlayout/widget/d;->z:I

    .line 316
    .line 317
    move-object/from16 v0, p3

    .line 318
    .line 319
    move/from16 v1, v17

    .line 320
    .line 321
    const/4 v11, 0x3

    .line 322
    move v3, v11

    .line 323
    goto :goto_6

    .line 324
    :cond_d
    iget v0, v7, Landroidx/constraintlayout/widget/d;->l:I

    .line 325
    .line 326
    if-eq v0, v10, :cond_e

    .line 327
    .line 328
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    move-object v2, v0

    .line 333
    check-cast v2, Lq/d;

    .line 334
    .line 335
    if-eqz v2, :cond_e

    .line 336
    .line 337
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 338
    .line 339
    iget v5, v7, Landroidx/constraintlayout/widget/d;->z:I

    .line 340
    .line 341
    move-object/from16 v0, p3

    .line 342
    .line 343
    move/from16 v1, v17

    .line 344
    .line 345
    move/from16 v3, v17

    .line 346
    .line 347
    :goto_6
    invoke-virtual/range {v0 .. v5}, Lq/d;->w(ILq/d;III)V

    .line 348
    .line 349
    .line 350
    :cond_e
    iget v4, v7, Landroidx/constraintlayout/widget/d;->m:I

    .line 351
    .line 352
    if-eq v4, v10, :cond_f

    .line 353
    .line 354
    const/4 v5, 0x6

    .line 355
    move-object/from16 v0, p0

    .line 356
    .line 357
    move-object/from16 v1, p3

    .line 358
    .line 359
    move-object/from16 v2, p4

    .line 360
    .line 361
    move-object/from16 v3, p5

    .line 362
    .line 363
    :goto_7
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Lq/d;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;II)V

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_f
    iget v4, v7, Landroidx/constraintlayout/widget/d;->n:I

    .line 368
    .line 369
    if-eq v4, v10, :cond_10

    .line 370
    .line 371
    move-object/from16 v0, p0

    .line 372
    .line 373
    move-object/from16 v1, p3

    .line 374
    .line 375
    move-object/from16 v2, p4

    .line 376
    .line 377
    move-object/from16 v3, p5

    .line 378
    .line 379
    const/4 v8, 0x3

    .line 380
    move v5, v8

    .line 381
    goto :goto_7

    .line 382
    :cond_10
    iget v4, v7, Landroidx/constraintlayout/widget/d;->o:I

    .line 383
    .line 384
    if-eq v4, v10, :cond_11

    .line 385
    .line 386
    move-object/from16 v0, p0

    .line 387
    .line 388
    move-object/from16 v1, p3

    .line 389
    .line 390
    move-object/from16 v2, p4

    .line 391
    .line 392
    move-object/from16 v3, p5

    .line 393
    .line 394
    move/from16 v5, v17

    .line 395
    .line 396
    goto :goto_7

    .line 397
    :cond_11
    :goto_8
    cmpl-float v0, v14, v15

    .line 398
    .line 399
    if-ltz v0, :cond_12

    .line 400
    .line 401
    iput v14, v6, Lq/d;->d0:F

    .line 402
    .line 403
    :cond_12
    iget v0, v7, Landroidx/constraintlayout/widget/d;->F:F

    .line 404
    .line 405
    cmpl-float v1, v0, v15

    .line 406
    .line 407
    if-ltz v1, :cond_13

    .line 408
    .line 409
    iput v0, v6, Lq/d;->e0:F

    .line 410
    .line 411
    :cond_13
    :goto_9
    if-eqz p1, :cond_15

    .line 412
    .line 413
    iget v0, v7, Landroidx/constraintlayout/widget/d;->T:I

    .line 414
    .line 415
    if-ne v0, v10, :cond_14

    .line 416
    .line 417
    iget v1, v7, Landroidx/constraintlayout/widget/d;->U:I

    .line 418
    .line 419
    if-eq v1, v10, :cond_15

    .line 420
    .line 421
    :cond_14
    iget v1, v7, Landroidx/constraintlayout/widget/d;->U:I

    .line 422
    .line 423
    iput v0, v6, Lq/d;->Y:I

    .line 424
    .line 425
    iput v1, v6, Lq/d;->Z:I

    .line 426
    .line 427
    :cond_15
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->a0:Z

    .line 428
    .line 429
    const/4 v1, 0x3

    .line 430
    const/4 v2, 0x2

    .line 431
    const/4 v3, 0x1

    .line 432
    const/4 v4, -0x2

    .line 433
    const/4 v5, 0x4

    .line 434
    const/4 v8, 0x0

    .line 435
    if-nez v0, :cond_18

    .line 436
    .line 437
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 438
    .line 439
    if-ne v0, v10, :cond_17

    .line 440
    .line 441
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->W:Z

    .line 442
    .line 443
    if-eqz v0, :cond_16

    .line 444
    .line 445
    invoke-virtual {v6, v1}, Lq/d;->N(I)V

    .line 446
    .line 447
    .line 448
    :goto_a
    move/from16 v0, v18

    .line 449
    .line 450
    goto :goto_b

    .line 451
    :cond_16
    invoke-virtual {v6, v5}, Lq/d;->N(I)V

    .line 452
    .line 453
    .line 454
    goto :goto_a

    .line 455
    :goto_b
    invoke-virtual {v6, v0}, Lq/d;->j(I)Lq/c;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 460
    .line 461
    iput v11, v0, Lq/c;->g:I

    .line 462
    .line 463
    const/4 v0, 0x4

    .line 464
    invoke-virtual {v6, v0}, Lq/d;->j(I)Lq/c;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 469
    .line 470
    iput v11, v0, Lq/c;->g:I

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_17
    invoke-virtual {v6, v1}, Lq/d;->N(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v8}, Lq/d;->P(I)V

    .line 477
    .line 478
    .line 479
    goto :goto_c

    .line 480
    :cond_18
    invoke-virtual {v6, v3}, Lq/d;->N(I)V

    .line 481
    .line 482
    .line 483
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 484
    .line 485
    invoke-virtual {v6, v0}, Lq/d;->P(I)V

    .line 486
    .line 487
    .line 488
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 489
    .line 490
    if-ne v0, v4, :cond_19

    .line 491
    .line 492
    invoke-virtual {v6, v2}, Lq/d;->N(I)V

    .line 493
    .line 494
    .line 495
    :cond_19
    :goto_c
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->b0:Z

    .line 496
    .line 497
    if-nez v0, :cond_1c

    .line 498
    .line 499
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 500
    .line 501
    if-ne v0, v10, :cond_1b

    .line 502
    .line 503
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/d;->X:Z

    .line 504
    .line 505
    if-eqz v0, :cond_1a

    .line 506
    .line 507
    invoke-virtual {v6, v1}, Lq/d;->O(I)V

    .line 508
    .line 509
    .line 510
    :goto_d
    const/4 v0, 0x3

    .line 511
    goto :goto_e

    .line 512
    :cond_1a
    invoke-virtual {v6, v5}, Lq/d;->O(I)V

    .line 513
    .line 514
    .line 515
    goto :goto_d

    .line 516
    :goto_e
    invoke-virtual {v6, v0}, Lq/d;->j(I)Lq/c;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 521
    .line 522
    iput v4, v0, Lq/c;->g:I

    .line 523
    .line 524
    move/from16 v0, v17

    .line 525
    .line 526
    invoke-virtual {v6, v0}, Lq/d;->j(I)Lq/c;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 531
    .line 532
    iput v4, v0, Lq/c;->g:I

    .line 533
    .line 534
    goto :goto_f

    .line 535
    :cond_1b
    invoke-virtual {v6, v1}, Lq/d;->O(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v8}, Lq/d;->M(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_1c
    invoke-virtual {v6, v3}, Lq/d;->O(I)V

    .line 543
    .line 544
    .line 545
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 546
    .line 547
    invoke-virtual {v6, v0}, Lq/d;->M(I)V

    .line 548
    .line 549
    .line 550
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 551
    .line 552
    if-ne v0, v4, :cond_1d

    .line 553
    .line 554
    invoke-virtual {v6, v2}, Lq/d;->O(I)V

    .line 555
    .line 556
    .line 557
    :cond_1d
    :goto_f
    iget-object v0, v7, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    .line 558
    .line 559
    if-eqz v0, :cond_25

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-nez v4, :cond_1e

    .line 566
    .line 567
    goto/16 :goto_13

    .line 568
    .line 569
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    const/16 v5, 0x2c

    .line 574
    .line 575
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 576
    .line 577
    .line 578
    move-result v5

    .line 579
    if-lez v5, :cond_21

    .line 580
    .line 581
    add-int/lit8 v11, v4, -0x1

    .line 582
    .line 583
    if-ge v5, v11, :cond_21

    .line 584
    .line 585
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v11

    .line 589
    const-string v12, "W"

    .line 590
    .line 591
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 592
    .line 593
    .line 594
    move-result v12

    .line 595
    if-eqz v12, :cond_1f

    .line 596
    .line 597
    move v10, v8

    .line 598
    goto :goto_10

    .line 599
    :cond_1f
    const-string v12, "H"

    .line 600
    .line 601
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    if-eqz v11, :cond_20

    .line 606
    .line 607
    move v10, v3

    .line 608
    :cond_20
    :goto_10
    add-int/2addr v5, v3

    .line 609
    goto :goto_11

    .line 610
    :cond_21
    move v5, v8

    .line 611
    :goto_11
    const/16 v11, 0x3a

    .line 612
    .line 613
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-ltz v11, :cond_23

    .line 618
    .line 619
    sub-int/2addr v4, v3

    .line 620
    if-ge v11, v4, :cond_23

    .line 621
    .line 622
    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    add-int/2addr v11, v3

    .line 627
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-lez v5, :cond_24

    .line 636
    .line 637
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-lez v5, :cond_24

    .line 642
    .line 643
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 644
    .line 645
    .line 646
    move-result v4

    .line 647
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    cmpl-float v5, v4, v15

    .line 652
    .line 653
    if-lez v5, :cond_24

    .line 654
    .line 655
    cmpl-float v5, v0, v15

    .line 656
    .line 657
    if-lez v5, :cond_24

    .line 658
    .line 659
    if-ne v10, v3, :cond_22

    .line 660
    .line 661
    div-float/2addr v0, v4

    .line 662
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    goto :goto_12

    .line 667
    :cond_22
    div-float/2addr v4, v0

    .line 668
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 669
    .line 670
    .line 671
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    goto :goto_12

    .line 673
    :cond_23
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    if-lez v4, :cond_24

    .line 682
    .line 683
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 684
    .line 685
    .line 686
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    goto :goto_12

    .line 688
    :catch_0
    :cond_24
    move v0, v15

    .line 689
    :goto_12
    cmpl-float v4, v0, v15

    .line 690
    .line 691
    if-lez v4, :cond_26

    .line 692
    .line 693
    iput v0, v6, Lq/d;->W:F

    .line 694
    .line 695
    iput v10, v6, Lq/d;->X:I

    .line 696
    .line 697
    goto :goto_14

    .line 698
    :cond_25
    :goto_13
    iput v15, v6, Lq/d;->W:F

    .line 699
    .line 700
    :cond_26
    :goto_14
    iget v0, v7, Landroidx/constraintlayout/widget/d;->H:F

    .line 701
    .line 702
    iget-object v4, v6, Lq/d;->k0:[F

    .line 703
    .line 704
    aput v0, v4, v8

    .line 705
    .line 706
    iget v0, v7, Landroidx/constraintlayout/widget/d;->I:F

    .line 707
    .line 708
    aput v0, v4, v3

    .line 709
    .line 710
    iget v0, v7, Landroidx/constraintlayout/widget/d;->J:I

    .line 711
    .line 712
    iput v0, v6, Lq/d;->i0:I

    .line 713
    .line 714
    iget v0, v7, Landroidx/constraintlayout/widget/d;->K:I

    .line 715
    .line 716
    iput v0, v6, Lq/d;->j0:I

    .line 717
    .line 718
    iget v0, v7, Landroidx/constraintlayout/widget/d;->Z:I

    .line 719
    .line 720
    if-ltz v0, :cond_27

    .line 721
    .line 722
    if-gt v0, v1, :cond_27

    .line 723
    .line 724
    iput v0, v6, Lq/d;->q:I

    .line 725
    .line 726
    :cond_27
    iget v0, v7, Landroidx/constraintlayout/widget/d;->L:I

    .line 727
    .line 728
    iget v1, v7, Landroidx/constraintlayout/widget/d;->N:I

    .line 729
    .line 730
    iget v3, v7, Landroidx/constraintlayout/widget/d;->P:I

    .line 731
    .line 732
    iget v4, v7, Landroidx/constraintlayout/widget/d;->R:F

    .line 733
    .line 734
    iput v0, v6, Lq/d;->r:I

    .line 735
    .line 736
    iput v1, v6, Lq/d;->u:I

    .line 737
    .line 738
    const v1, 0x7fffffff

    .line 739
    .line 740
    .line 741
    if-ne v3, v1, :cond_28

    .line 742
    .line 743
    move v3, v8

    .line 744
    :cond_28
    iput v3, v6, Lq/d;->v:I

    .line 745
    .line 746
    iput v4, v6, Lq/d;->w:F

    .line 747
    .line 748
    cmpl-float v3, v4, v15

    .line 749
    .line 750
    const/high16 v5, 0x3f800000    # 1.0f

    .line 751
    .line 752
    if-lez v3, :cond_29

    .line 753
    .line 754
    cmpg-float v3, v4, v5

    .line 755
    .line 756
    if-gez v3, :cond_29

    .line 757
    .line 758
    if-nez v0, :cond_29

    .line 759
    .line 760
    iput v2, v6, Lq/d;->r:I

    .line 761
    .line 762
    :cond_29
    iget v0, v7, Landroidx/constraintlayout/widget/d;->M:I

    .line 763
    .line 764
    iget v3, v7, Landroidx/constraintlayout/widget/d;->O:I

    .line 765
    .line 766
    iget v4, v7, Landroidx/constraintlayout/widget/d;->Q:I

    .line 767
    .line 768
    iget v7, v7, Landroidx/constraintlayout/widget/d;->S:F

    .line 769
    .line 770
    iput v0, v6, Lq/d;->s:I

    .line 771
    .line 772
    iput v3, v6, Lq/d;->x:I

    .line 773
    .line 774
    if-ne v4, v1, :cond_2a

    .line 775
    .line 776
    goto :goto_15

    .line 777
    :cond_2a
    move v8, v4

    .line 778
    :goto_15
    iput v8, v6, Lq/d;->y:I

    .line 779
    .line 780
    iput v7, v6, Lq/d;->z:F

    .line 781
    .line 782
    cmpl-float v1, v7, v15

    .line 783
    .line 784
    if-lez v1, :cond_2b

    .line 785
    .line 786
    cmpg-float v1, v7, v5

    .line 787
    .line 788
    if-gez v1, :cond_2b

    .line 789
    .line 790
    if-nez v0, :cond_2b

    .line 791
    .line 792
    iput v2, v6, Lq/d;->s:I

    .line 793
    .line 794
    :cond_2b
    :goto_16
    return-void
.end method

.method public final b(Lq/d;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lq/d;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/d;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/d;->c0:Z

    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    if-ne p5, v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroidx/constraintlayout/widget/d;

    .line 38
    .line 39
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/d;->c0:Z

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    .line 42
    .line 43
    iput-boolean p4, v0, Lq/d;->E:Z

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lq/d;->j(I)Lq/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p3, p5}, Lq/d;->j(I)Lq/c;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    iget p5, p2, Landroidx/constraintlayout/widget/d;->D:I

    .line 54
    .line 55
    iget p2, p2, Landroidx/constraintlayout/widget/d;->C:I

    .line 56
    .line 57
    invoke-virtual {v0, p3, p5, p2, p4}, Lq/c;->b(Lq/c;IIZ)Z

    .line 58
    .line 59
    .line 60
    iput-boolean p4, p1, Lq/d;->E:Z

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lq/d;->j(I)Lq/c;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lq/c;->j()V

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x5

    .line 71
    invoke-virtual {p1, p2}, Lq/d;->j(I)Lq/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lq/c;->j()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/constraintlayout/widget/d;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v3

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v1

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v3

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public fillMetrics(Lo/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 2
    .line 3
    iget-object p1, p1, Lq/e;->w0:Lo/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 17
    .line 18
    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;
    .locals 8

    new-instance v0, Landroidx/constraintlayout/widget/d;

    const/4 v1, -0x2

    .line 2
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/d;->a:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Landroidx/constraintlayout/widget/d;->c:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->d:Z

    iput v1, v0, Landroidx/constraintlayout/widget/d;->e:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->f:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->g:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->h:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->i:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->j:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->k:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->l:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->m:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->n:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->o:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->p:I

    const/4 v4, 0x0

    iput v4, v0, Landroidx/constraintlayout/widget/d;->q:I

    const/4 v5, 0x0

    iput v5, v0, Landroidx/constraintlayout/widget/d;->r:F

    iput v1, v0, Landroidx/constraintlayout/widget/d;->s:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->t:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->u:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->v:I

    const/high16 v5, -0x80000000

    iput v5, v0, Landroidx/constraintlayout/widget/d;->w:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->x:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->y:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->z:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->A:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->B:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->C:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->D:I

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v0, Landroidx/constraintlayout/widget/d;->E:F

    iput v6, v0, Landroidx/constraintlayout/widget/d;->F:F

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    iput v2, v0, Landroidx/constraintlayout/widget/d;->H:F

    iput v2, v0, Landroidx/constraintlayout/widget/d;->I:F

    iput v4, v0, Landroidx/constraintlayout/widget/d;->J:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->K:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->L:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->M:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->N:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->O:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->P:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->Q:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroidx/constraintlayout/widget/d;->R:F

    iput v2, v0, Landroidx/constraintlayout/widget/d;->S:F

    iput v1, v0, Landroidx/constraintlayout/widget/d;->T:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->U:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->V:I

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->W:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->X:Z

    iput-object v7, v0, Landroidx/constraintlayout/widget/d;->Y:Ljava/lang/String;

    iput v4, v0, Landroidx/constraintlayout/widget/d;->Z:I

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->a0:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->b0:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->c0:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->e0:Z

    iput v1, v0, Landroidx/constraintlayout/widget/d;->f0:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->g0:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->h0:I

    iput v1, v0, Landroidx/constraintlayout/widget/d;->i0:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->j0:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->k0:I

    iput v6, v0, Landroidx/constraintlayout/widget/d;->l0:F

    new-instance v1, Lq/d;

    invoke-direct {v1}, Lq/d;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    new-instance v0, Landroidx/constraintlayout/widget/d;

    .line 2
    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, v0, Landroidx/constraintlayout/widget/d;->a:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/d;->c:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/d;->d:Z

    iput p1, v0, Landroidx/constraintlayout/widget/d;->e:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->f:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->g:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->h:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->i:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->j:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->k:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->l:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->m:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->n:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->o:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->p:I

    const/4 v3, 0x0

    iput v3, v0, Landroidx/constraintlayout/widget/d;->q:I

    const/4 v4, 0x0

    iput v4, v0, Landroidx/constraintlayout/widget/d;->r:F

    iput p1, v0, Landroidx/constraintlayout/widget/d;->s:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->t:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->u:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->v:I

    const/high16 v4, -0x80000000

    iput v4, v0, Landroidx/constraintlayout/widget/d;->w:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->x:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->y:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->z:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->A:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->B:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->C:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->D:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v0, Landroidx/constraintlayout/widget/d;->E:F

    iput v5, v0, Landroidx/constraintlayout/widget/d;->F:F

    const/4 v6, 0x0

    iput-object v6, v0, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    iput v1, v0, Landroidx/constraintlayout/widget/d;->H:F

    iput v1, v0, Landroidx/constraintlayout/widget/d;->I:F

    iput v3, v0, Landroidx/constraintlayout/widget/d;->J:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->K:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->L:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->M:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->N:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->O:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->P:I

    iput v3, v0, Landroidx/constraintlayout/widget/d;->Q:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/widget/d;->R:F

    iput v1, v0, Landroidx/constraintlayout/widget/d;->S:F

    iput p1, v0, Landroidx/constraintlayout/widget/d;->T:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->U:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->V:I

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->W:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->X:Z

    iput-object v6, v0, Landroidx/constraintlayout/widget/d;->Y:Ljava/lang/String;

    iput v3, v0, Landroidx/constraintlayout/widget/d;->Z:I

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/d;->a0:Z

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/d;->b0:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->c0:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d;->e0:Z

    iput p1, v0, Landroidx/constraintlayout/widget/d;->f0:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->g0:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->h0:I

    iput p1, v0, Landroidx/constraintlayout/widget/d;->i0:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->j0:I

    iput v4, v0, Landroidx/constraintlayout/widget/d;->k0:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->l0:F

    new-instance p1, Lq/d;

    invoke-direct {p1}, Lq/d;-><init>()V

    iput-object p1, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/d;
    .locals 12

    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/widget/d;->a:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->b:I

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Landroidx/constraintlayout/widget/d;->c:F

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->d:Z

    iput v2, v0, Landroidx/constraintlayout/widget/d;->e:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->f:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->g:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->h:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->i:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->j:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->k:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->l:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->m:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->n:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->o:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->p:I

    const/4 v5, 0x0

    iput v5, v0, Landroidx/constraintlayout/widget/d;->q:I

    const/4 v6, 0x0

    iput v6, v0, Landroidx/constraintlayout/widget/d;->r:F

    iput v2, v0, Landroidx/constraintlayout/widget/d;->s:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->t:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->u:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->v:I

    const/high16 v7, -0x80000000

    iput v7, v0, Landroidx/constraintlayout/widget/d;->w:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->x:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->y:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->z:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->A:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->B:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->C:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->D:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Landroidx/constraintlayout/widget/d;->E:F

    iput v8, v0, Landroidx/constraintlayout/widget/d;->F:F

    const/4 v9, 0x0

    iput-object v9, v0, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    iput v3, v0, Landroidx/constraintlayout/widget/d;->H:F

    iput v3, v0, Landroidx/constraintlayout/widget/d;->I:F

    iput v5, v0, Landroidx/constraintlayout/widget/d;->J:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->K:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->L:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->M:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->N:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->O:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->P:I

    iput v5, v0, Landroidx/constraintlayout/widget/d;->Q:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroidx/constraintlayout/widget/d;->R:F

    iput v3, v0, Landroidx/constraintlayout/widget/d;->S:F

    iput v2, v0, Landroidx/constraintlayout/widget/d;->T:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->U:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->V:I

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/d;->W:Z

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/d;->X:Z

    iput-object v9, v0, Landroidx/constraintlayout/widget/d;->Y:Ljava/lang/String;

    iput v5, v0, Landroidx/constraintlayout/widget/d;->Z:I

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->a0:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/d;->b0:Z

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/d;->c0:Z

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/d;->e0:Z

    iput v2, v0, Landroidx/constraintlayout/widget/d;->f0:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->g0:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->h0:I

    iput v2, v0, Landroidx/constraintlayout/widget/d;->i0:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->j0:I

    iput v7, v0, Landroidx/constraintlayout/widget/d;->k0:I

    iput v8, v0, Landroidx/constraintlayout/widget/d;->l0:F

    new-instance v3, Lq/d;

    invoke-direct {v3}, Lq/d;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    sget-object v3, Landroidx/constraintlayout/widget/s;->b:[I

    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    sget-object v8, Landroidx/constraintlayout/widget/c;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    const-string v9, "ConstraintLayout"

    const/4 v10, 0x2

    const/4 v11, -0x2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    iget-boolean v8, v0, Landroidx/constraintlayout/widget/d;->d:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Landroidx/constraintlayout/widget/d;->d:Z

    goto/16 :goto_2

    :pswitch_1
    iget v8, v0, Landroidx/constraintlayout/widget/d;->Z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->Z:I

    goto/16 :goto_2

    :pswitch_2
    invoke-static {v0, p1, v7, v4}, Landroidx/constraintlayout/widget/o;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {v0, p1, v7, v5}, Landroidx/constraintlayout/widget/o;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_2

    :pswitch_4
    iget v8, v0, Landroidx/constraintlayout/widget/d;->C:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->C:I

    goto/16 :goto_2

    :pswitch_5
    iget v8, v0, Landroidx/constraintlayout/widget/d;->D:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->D:I

    goto/16 :goto_2

    :pswitch_6
    iget v8, v0, Landroidx/constraintlayout/widget/d;->o:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->o:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->o:I

    goto/16 :goto_2

    :pswitch_7
    iget v8, v0, Landroidx/constraintlayout/widget/d;->n:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->n:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->n:I

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/widget/d;->Y:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_9
    iget v8, v0, Landroidx/constraintlayout/widget/d;->U:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->U:I

    goto/16 :goto_2

    :pswitch_a
    iget v8, v0, Landroidx/constraintlayout/widget/d;->T:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->T:I

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->K:I

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->J:I

    goto/16 :goto_2

    :pswitch_d
    iget v8, v0, Landroidx/constraintlayout/widget/d;->I:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->I:F

    goto/16 :goto_2

    :pswitch_e
    iget v8, v0, Landroidx/constraintlayout/widget/d;->H:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->H:F

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/constraintlayout/widget/o;->h(Landroidx/constraintlayout/widget/d;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    iget v8, v0, Landroidx/constraintlayout/widget/d;->S:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->S:F

    iput v10, v0, Landroidx/constraintlayout/widget/d;->M:I

    goto/16 :goto_2

    :pswitch_11
    :try_start_0
    iget v8, v0, Landroidx/constraintlayout/widget/d;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    iget v8, v0, Landroidx/constraintlayout/widget/d;->Q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Landroidx/constraintlayout/widget/d;->Q:I

    goto/16 :goto_2

    :pswitch_12
    :try_start_1
    iget v8, v0, Landroidx/constraintlayout/widget/d;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    iget v8, v0, Landroidx/constraintlayout/widget/d;->O:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Landroidx/constraintlayout/widget/d;->O:I

    goto/16 :goto_2

    :pswitch_13
    iget v8, v0, Landroidx/constraintlayout/widget/d;->R:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->R:F

    iput v10, v0, Landroidx/constraintlayout/widget/d;->L:I

    goto/16 :goto_2

    :pswitch_14
    :try_start_2
    iget v8, v0, Landroidx/constraintlayout/widget/d;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    iget v8, v0, Landroidx/constraintlayout/widget/d;->P:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Landroidx/constraintlayout/widget/d;->P:I

    goto/16 :goto_2

    :pswitch_15
    :try_start_3
    iget v8, v0, Landroidx/constraintlayout/widget/d;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->N:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    iget v8, v0, Landroidx/constraintlayout/widget/d;->N:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-ne v7, v11, :cond_0

    iput v11, v0, Landroidx/constraintlayout/widget/d;->N:I

    goto/16 :goto_2

    :pswitch_16
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->M:I

    if-ne v7, v4, :cond_0

    const-string v7, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    :goto_1
    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_17
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->L:I

    if-ne v7, v4, :cond_0

    const-string v7, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    goto :goto_1

    :pswitch_18
    iget v8, v0, Landroidx/constraintlayout/widget/d;->F:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->F:F

    goto/16 :goto_2

    :pswitch_19
    iget v8, v0, Landroidx/constraintlayout/widget/d;->E:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->E:F

    goto/16 :goto_2

    :pswitch_1a
    iget-boolean v8, v0, Landroidx/constraintlayout/widget/d;->X:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Landroidx/constraintlayout/widget/d;->X:Z

    goto/16 :goto_2

    :pswitch_1b
    iget-boolean v8, v0, Landroidx/constraintlayout/widget/d;->W:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Landroidx/constraintlayout/widget/d;->W:Z

    goto/16 :goto_2

    :pswitch_1c
    iget v8, v0, Landroidx/constraintlayout/widget/d;->B:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->B:I

    goto/16 :goto_2

    :pswitch_1d
    iget v8, v0, Landroidx/constraintlayout/widget/d;->A:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->A:I

    goto/16 :goto_2

    :pswitch_1e
    iget v8, v0, Landroidx/constraintlayout/widget/d;->z:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->z:I

    goto/16 :goto_2

    :pswitch_1f
    iget v8, v0, Landroidx/constraintlayout/widget/d;->y:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->y:I

    goto/16 :goto_2

    :pswitch_20
    iget v8, v0, Landroidx/constraintlayout/widget/d;->x:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->x:I

    goto/16 :goto_2

    :pswitch_21
    iget v8, v0, Landroidx/constraintlayout/widget/d;->w:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->w:I

    goto/16 :goto_2

    :pswitch_22
    iget v8, v0, Landroidx/constraintlayout/widget/d;->v:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->v:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->v:I

    goto/16 :goto_2

    :pswitch_23
    iget v8, v0, Landroidx/constraintlayout/widget/d;->u:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->u:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->u:I

    goto/16 :goto_2

    :pswitch_24
    iget v8, v0, Landroidx/constraintlayout/widget/d;->t:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->t:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->t:I

    goto/16 :goto_2

    :pswitch_25
    iget v8, v0, Landroidx/constraintlayout/widget/d;->s:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->s:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->s:I

    goto/16 :goto_2

    :pswitch_26
    iget v8, v0, Landroidx/constraintlayout/widget/d;->m:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->m:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->m:I

    goto/16 :goto_2

    :pswitch_27
    iget v8, v0, Landroidx/constraintlayout/widget/d;->l:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->l:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->l:I

    goto/16 :goto_2

    :pswitch_28
    iget v8, v0, Landroidx/constraintlayout/widget/d;->k:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->k:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->k:I

    goto/16 :goto_2

    :pswitch_29
    iget v8, v0, Landroidx/constraintlayout/widget/d;->j:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->j:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->j:I

    goto/16 :goto_2

    :pswitch_2a
    iget v8, v0, Landroidx/constraintlayout/widget/d;->i:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->i:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->i:I

    goto/16 :goto_2

    :pswitch_2b
    iget v8, v0, Landroidx/constraintlayout/widget/d;->h:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->h:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->h:I

    goto/16 :goto_2

    :pswitch_2c
    iget v8, v0, Landroidx/constraintlayout/widget/d;->g:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->g:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->g:I

    goto/16 :goto_2

    :pswitch_2d
    iget v8, v0, Landroidx/constraintlayout/widget/d;->f:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->f:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->f:I

    goto :goto_2

    :pswitch_2e
    iget v8, v0, Landroidx/constraintlayout/widget/d;->e:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->e:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->e:I

    goto :goto_2

    :pswitch_2f
    iget v8, v0, Landroidx/constraintlayout/widget/d;->c:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->c:F

    goto :goto_2

    :pswitch_30
    iget v8, v0, Landroidx/constraintlayout/widget/d;->b:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->b:I

    goto :goto_2

    :pswitch_31
    iget v8, v0, Landroidx/constraintlayout/widget/d;->a:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->a:I

    goto :goto_2

    :pswitch_32
    iget v8, v0, Landroidx/constraintlayout/widget/d;->r:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    const/high16 v8, 0x43b40000    # 360.0f

    rem-float/2addr v7, v8

    iput v7, v0, Landroidx/constraintlayout/widget/d;->r:F

    cmpg-float v9, v7, v6

    if-gez v9, :cond_0

    sub-float v7, v8, v7

    rem-float/2addr v7, v8

    iput v7, v0, Landroidx/constraintlayout/widget/d;->r:F

    goto :goto_2

    :pswitch_33
    iget v8, v0, Landroidx/constraintlayout/widget/d;->q:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->q:I

    goto :goto_2

    :pswitch_34
    iget v8, v0, Landroidx/constraintlayout/widget/d;->p:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->p:I

    if-ne v8, v2, :cond_0

    invoke-virtual {p1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->p:I

    goto :goto_2

    :pswitch_35
    iget v8, v0, Landroidx/constraintlayout/widget/d;->V:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v0, Landroidx/constraintlayout/widget/d;->V:I

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/d;->a()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 2
    .line 3
    iget v0, v0, Lq/e;->D0:I

    .line 4
    .line 5
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 7
    .line 8
    iget-object v1, v1, Lq/d;->j:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 32
    .line 33
    iput-object v1, v3, Lq/d;->j:Ljava/lang/String;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 37
    .line 38
    const-string v3, "parent"

    .line 39
    .line 40
    iput-object v3, v1, Lq/d;->j:Ljava/lang/String;

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 43
    .line 44
    iget-object v3, v1, Lq/d;->h0:Ljava/lang/String;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    iget-object v3, v1, Lq/d;->j:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, v1, Lq/d;->h0:Ljava/lang/String;

    .line 51
    .line 52
    :cond_2
    iget-object v1, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lq/d;

    .line 69
    .line 70
    iget-object v4, v3, Lq/d;->f0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Landroid/view/View;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    iget-object v5, v3, Lq/d;->j:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eq v4, v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iput-object v4, v3, Lq/d;->j:Ljava/lang/String;

    .line 99
    .line 100
    :cond_4
    iget-object v4, v3, Lq/d;->h0:Ljava/lang/String;

    .line 101
    .line 102
    if-nez v4, :cond_3

    .line 103
    .line 104
    iget-object v4, v3, Lq/d;->j:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v4, v3, Lq/d;->h0:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lq/e;->o(Ljava/lang/StringBuilder;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Lq/d;
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d;

    iget-object p1, p1, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public isRtl()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadLayoutDescription(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Landroidx/constraintlayout/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/widget/h;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    iget-object v1, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/d;->e0:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lq/d;->s()I

    move-result v0

    invoke-virtual {v1}, Lq/d;->t()I

    move-result v2

    invoke-virtual {v1}, Lq/d;->r()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lq/d;->l()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    :goto_2
    if-ge p3, p1, :cond_2

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 8
    .line 9
    if-ne v0, v6, :cond_0

    .line 10
    .line 11
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iput-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    iput v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 43
    .line 44
    iput v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 45
    .line 46
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iput-boolean v3, v0, Lq/e;->v0:Z

    .line 53
    .line 54
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 55
    .line 56
    if-eqz v0, :cond_1c

    .line 57
    .line 58
    iput-boolean v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    move v3, v2

    .line 65
    :goto_2
    if-ge v3, v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    move v9, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move v9, v2

    .line 83
    :goto_3
    if-eqz v9, :cond_1b

    .line 84
    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    move v0, v2

    .line 94
    :goto_4
    if-ge v0, v11, :cond_6

    .line 95
    .line 96
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-nez v3, :cond_5

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual {v3}, Lq/d;->D()V

    .line 108
    .line 109
    .line 110
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    const/4 v0, 0x0

    .line 114
    const/4 v3, -0x1

    .line 115
    if-eqz v10, :cond_c

    .line 116
    .line 117
    move v4, v2

    .line 118
    :goto_6
    if-ge v4, v11, :cond_c

    .line 119
    .line 120
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v7, v2, v12, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const/16 v13, 0x2f

    .line 148
    .line 149
    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eq v13, v3, :cond_7

    .line 154
    .line 155
    add-int/lit8 v13, v13, 0x1

    .line 156
    .line 157
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_8

    .line 166
    .line 167
    :goto_7
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 168
    .line 169
    goto :goto_8

    .line 170
    :cond_8
    iget-object v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 171
    .line 172
    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    check-cast v13, Landroid/view/View;

    .line 177
    .line 178
    if-nez v13, :cond_9

    .line 179
    .line 180
    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    if-eqz v13, :cond_9

    .line 185
    .line 186
    if-eq v13, v7, :cond_9

    .line 187
    .line 188
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    if-ne v5, v7, :cond_9

    .line 193
    .line 194
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    :cond_9
    if-ne v13, v7, :cond_a

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_a
    if-nez v13, :cond_b

    .line 201
    .line 202
    move-object v5, v0

    .line 203
    goto :goto_8

    .line 204
    :cond_b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Landroidx/constraintlayout/widget/d;

    .line 209
    .line 210
    iget-object v5, v5, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    .line 211
    .line 212
    :goto_8
    iput-object v12, v5, Lq/d;->h0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    :catch_0
    add-int/lit8 v4, v4, 0x1

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_c
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 218
    .line 219
    if-eq v4, v3, :cond_d

    .line 220
    .line 221
    move v3, v2

    .line 222
    :goto_9
    if-ge v3, v11, :cond_d

    .line 223
    .line 224
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 229
    .line 230
    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_d
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    .line 235
    .line 236
    if-eqz v3, :cond_e

    .line 237
    .line 238
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/widget/o;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 239
    .line 240
    .line 241
    :cond_e
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 242
    .line 243
    iget-object v3, v3, Lq/l;->q0:Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    .line 247
    .line 248
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-lez v3, :cond_16

    .line 255
    .line 256
    move v4, v2

    .line 257
    :goto_a
    if-ge v4, v3, :cond_16

    .line 258
    .line 259
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    check-cast v5, Landroidx/constraintlayout/widget/b;

    .line 266
    .line 267
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    if-eqz v12, :cond_f

    .line 272
    .line 273
    iget-object v12, v5, Landroidx/constraintlayout/widget/b;->e:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/widget/b;->setIds(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_f
    iget-object v12, v5, Landroidx/constraintlayout/widget/b;->d:Lq/j;

    .line 279
    .line 280
    if-nez v12, :cond_10

    .line 281
    .line 282
    goto :goto_d

    .line 283
    :cond_10
    iput v2, v12, Lq/j;->r0:I

    .line 284
    .line 285
    iget-object v12, v12, Lq/j;->q0:[Lq/d;

    .line 286
    .line 287
    invoke-static {v12, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    move v12, v2

    .line 291
    :goto_b
    iget v13, v5, Landroidx/constraintlayout/widget/b;->b:I

    .line 292
    .line 293
    if-ge v12, v13, :cond_15

    .line 294
    .line 295
    iget-object v13, v5, Landroidx/constraintlayout/widget/b;->a:[I

    .line 296
    .line 297
    aget v13, v13, v12

    .line 298
    .line 299
    invoke-virtual {v7, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object v14

    .line 303
    if-nez v14, :cond_11

    .line 304
    .line 305
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    iget-object v15, v5, Landroidx/constraintlayout/widget/b;->g:Ljava/util/HashMap;

    .line 310
    .line 311
    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    check-cast v13, Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v5, v7, v13}, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_11

    .line 322
    .line 323
    iget-object v14, v5, Landroidx/constraintlayout/widget/b;->a:[I

    .line 324
    .line 325
    aput v0, v14, v12

    .line 326
    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v14

    .line 331
    invoke-virtual {v15, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v14

    .line 338
    :cond_11
    if-eqz v14, :cond_14

    .line 339
    .line 340
    iget-object v0, v5, Landroidx/constraintlayout/widget/b;->d:Lq/j;

    .line 341
    .line 342
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    .line 343
    .line 344
    .line 345
    move-result-object v13

    .line 346
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    if-eq v13, v0, :cond_14

    .line 350
    .line 351
    if-nez v13, :cond_12

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :cond_12
    iget v14, v0, Lq/j;->r0:I

    .line 355
    .line 356
    add-int/2addr v14, v1

    .line 357
    iget-object v15, v0, Lq/j;->q0:[Lq/d;

    .line 358
    .line 359
    array-length v2, v15

    .line 360
    if-le v14, v2, :cond_13

    .line 361
    .line 362
    array-length v2, v15

    .line 363
    mul-int/lit8 v2, v2, 0x2

    .line 364
    .line 365
    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, [Lq/d;

    .line 370
    .line 371
    iput-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 372
    .line 373
    :cond_13
    iget-object v2, v0, Lq/j;->q0:[Lq/d;

    .line 374
    .line 375
    iget v14, v0, Lq/j;->r0:I

    .line 376
    .line 377
    aput-object v13, v2, v14

    .line 378
    .line 379
    add-int/2addr v14, v1

    .line 380
    iput v14, v0, Lq/j;->r0:I

    .line 381
    .line 382
    :cond_14
    :goto_c
    add-int/lit8 v12, v12, 0x1

    .line 383
    .line 384
    const/4 v0, 0x0

    .line 385
    const/4 v2, 0x0

    .line 386
    goto :goto_b

    .line 387
    :cond_15
    iget-object v0, v5, Landroidx/constraintlayout/widget/b;->d:Lq/j;

    .line 388
    .line 389
    invoke-interface {v0}, Lq/i;->a()V

    .line 390
    .line 391
    .line 392
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 393
    .line 394
    const/4 v0, 0x0

    .line 395
    const/4 v2, 0x0

    .line 396
    goto/16 :goto_a

    .line 397
    .line 398
    :cond_16
    const/4 v0, 0x0

    .line 399
    :goto_e
    if-ge v0, v11, :cond_17

    .line 400
    .line 401
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 405
    .line 406
    goto :goto_e

    .line 407
    :cond_17
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 408
    .line 409
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 410
    .line 411
    .line 412
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 413
    .line 414
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 415
    .line 416
    const/4 v2, 0x0

    .line 417
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 421
    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 427
    .line 428
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    move v0, v2

    .line 432
    :goto_f
    if-ge v0, v11, :cond_18

    .line 433
    .line 434
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 443
    .line 444
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_18
    move v12, v2

    .line 455
    :goto_10
    if-ge v12, v11, :cond_1b

    .line 456
    .line 457
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    if-nez v3, :cond_19

    .line 466
    .line 467
    goto :goto_11

    .line 468
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    move-object v4, v0

    .line 473
    check-cast v4, Landroidx/constraintlayout/widget/d;

    .line 474
    .line 475
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 476
    .line 477
    iget-object v1, v0, Lq/l;->q0:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    iget-object v1, v3, Lq/d;->T:Lq/d;

    .line 483
    .line 484
    if-eqz v1, :cond_1a

    .line 485
    .line 486
    check-cast v1, Lq/l;

    .line 487
    .line 488
    iget-object v1, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    invoke-virtual {v3}, Lq/d;->D()V

    .line 494
    .line 495
    .line 496
    :cond_1a
    iput-object v0, v3, Lq/d;->T:Lq/d;

    .line 497
    .line 498
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 499
    .line 500
    move-object/from16 v0, p0

    .line 501
    .line 502
    move v1, v10

    .line 503
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Lq/d;Landroidx/constraintlayout/widget/d;Landroid/util/SparseArray;)V

    .line 504
    .line 505
    .line 506
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_1b
    if-eqz v9, :cond_1c

    .line 510
    .line 511
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 512
    .line 513
    iget-object v1, v0, Lq/e;->r0:Lv1/t;

    .line 514
    .line 515
    invoke-virtual {v1, v0}, Lv1/t;->u(Lq/e;)V

    .line 516
    .line 517
    .line 518
    :cond_1c
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 519
    .line 520
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 521
    .line 522
    invoke-virtual {v7, v0, v1, v6, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Lq/e;III)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 526
    .line 527
    invoke-virtual {v0}, Lq/d;->r()I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 532
    .line 533
    invoke-virtual {v0}, Lq/d;->l()I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 538
    .line 539
    iget-boolean v5, v0, Lq/e;->E0:Z

    .line 540
    .line 541
    iget-boolean v9, v0, Lq/e;->F0:Z

    .line 542
    .line 543
    move-object/from16 v0, p0

    .line 544
    .line 545
    move/from16 v1, p1

    .line 546
    .line 547
    move/from16 v2, p2

    .line 548
    .line 549
    move v6, v9

    .line 550
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 551
    .line 552
    .line 553
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/q;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lq/h;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    new-instance v1, Lq/h;

    invoke-direct {v1}, Lq/h;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/d;->p0:Lq/d;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/d;->d0:Z

    iget v0, v0, Landroidx/constraintlayout/widget/d;->V:I

    invoke-virtual {v1, v0}, Lq/h;->T(I)V

    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/b;->i()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d;->e0:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Lq/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 18
    .line 19
    iget-object v1, v1, Lq/l;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lq/d;->D()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 34
    .line 35
    return-void
.end method

.method public parseLayoutDescription(I)V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/h;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 17
    .line 18
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public resolveMeasuredDimension(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    iget v1, v0, Landroidx/constraintlayout/widget/e;->e:I

    iget v0, v0, Landroidx/constraintlayout/widget/e;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    return-void
.end method

.method public resolveSystem(Lq/e;III)V
    .locals 23

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/4 v10, 0x0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v3, v11, v2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    move-object/from16 v12, p0

    iget-object v5, v12, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 1
    iput v11, v5, Landroidx/constraintlayout/widget/e;->b:I

    .line 2
    iput v2, v5, Landroidx/constraintlayout/widget/e;->c:I

    iput v4, v5, Landroidx/constraintlayout/widget/e;->d:I

    iput v3, v5, Landroidx/constraintlayout/widget/e;->e:I

    move/from16 v2, p3

    iput v2, v5, Landroidx/constraintlayout/widget/e;->f:I

    move/from16 v2, p4

    iput v2, v5, Landroidx/constraintlayout/widget/e;->g:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gtz v2, :cond_2

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    move v13, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v5

    :goto_1
    sub-int v14, v0, v4

    sub-int v15, v1, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v14

    move v4, v9

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Lq/e;IIII)V

    .line 4
    iput v13, v6, Lq/e;->x0:I

    .line 5
    iput v11, v6, Lq/e;->y0:I

    iget-object v0, v6, Lq/e;->r0:Lv1/t;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v1, v6, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    .line 7
    iget-object v2, v6, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v7, v5}, Lq/k;->b(II)Z

    move-result v5

    const/16 v13, 0x40

    if-nez v5, :cond_4

    invoke-static {v7, v13}, Lq/k;->b(II)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v10

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    const/16 v16, 0x0

    if-eqz v7, :cond_d

    move v11, v10

    :goto_4
    if-ge v11, v2, :cond_d

    iget-object v13, v6, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq/d;

    move/from16 v17, v7

    .line 8
    iget-object v7, v13, Lq/d;->p0:[I

    .line 9
    aget v12, v7, v10

    const/4 v10, 0x3

    if-ne v12, v10, :cond_5

    const/4 v12, 0x1

    :goto_5
    const/16 v18, 0x1

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 10
    :goto_6
    aget v7, v7, v18

    if-ne v7, v10, :cond_6

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v12, :cond_7

    if-eqz v7, :cond_7

    .line 11
    iget v7, v13, Lq/d;->W:F

    cmpl-float v7, v7, v16

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    .line 12
    :goto_8
    invoke-virtual {v13}, Lq/d;->y()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v7, :cond_9

    :cond_8
    :goto_9
    const/4 v7, 0x0

    goto :goto_a

    :cond_9
    invoke-virtual {v13}, Lq/d;->z()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v7, :cond_a

    goto :goto_9

    :cond_a
    instance-of v7, v13, Lq/g;

    if-eqz v7, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v13}, Lq/d;->y()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v13}, Lq/d;->z()Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p0

    move/from16 v7, v17

    const/4 v10, 0x0

    goto :goto_4

    :cond_d
    move/from16 v17, v7

    move/from16 v7, v17

    :goto_a
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v10, :cond_e

    if-eq v9, v10, :cond_f

    :cond_e
    if-eqz v5, :cond_10

    :cond_f
    const/4 v11, 0x1

    goto :goto_b

    :cond_10
    const/4 v11, 0x0

    :goto_b
    and-int/2addr v7, v11

    if-eqz v7, :cond_2f

    .line 13
    iget-object v13, v6, Lq/d;->C:[I

    const/16 v17, 0x0

    aget v11, v13, v17

    .line 14
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v14, 0x1

    .line 15
    aget v13, v13, v14

    .line 16
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ne v8, v10, :cond_11

    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    move-result v15

    if-eq v15, v11, :cond_11

    invoke-virtual {v6, v11}, Lq/d;->P(I)V

    .line 17
    iget-object v11, v6, Lq/e;->s0:Lr/e;

    iput-boolean v14, v11, Lr/e;->b:Z

    :cond_11
    if-ne v9, v10, :cond_12

    .line 18
    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    move-result v11

    if-eq v11, v13, :cond_12

    invoke-virtual {v6, v13}, Lq/d;->M(I)V

    .line 19
    iget-object v11, v6, Lq/e;->s0:Lr/e;

    iput-boolean v14, v11, Lr/e;->b:Z

    .line 20
    :cond_12
    iget-object v11, v6, Lq/e;->s0:Lr/e;

    if-ne v8, v10, :cond_28

    if-ne v9, v10, :cond_28

    and-int/2addr v5, v14

    .line 21
    iget-boolean v13, v11, Lr/e;->b:Z

    .line 22
    iget-object v14, v11, Lr/e;->a:Lq/e;

    if-nez v13, :cond_14

    iget-boolean v13, v11, Lr/e;->c:Z

    if-eqz v13, :cond_13

    goto :goto_c

    :cond_13
    const/4 v10, 0x0

    goto :goto_e

    :cond_14
    :goto_c
    iget-object v13, v14, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lq/d;

    invoke-virtual {v15}, Lq/d;->i()V

    const/4 v10, 0x0

    iput-boolean v10, v15, Lq/d;->a:Z

    iget-object v12, v15, Lq/d;->d:Lr/k;

    invoke-virtual {v12}, Lr/k;->n()V

    iget-object v12, v15, Lq/d;->e:Lr/m;

    invoke-virtual {v12}, Lr/m;->m()V

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_d

    :cond_15
    const/4 v10, 0x0

    invoke-virtual {v14}, Lq/d;->i()V

    iput-boolean v10, v14, Lq/d;->a:Z

    iget-object v12, v14, Lq/d;->d:Lr/k;

    invoke-virtual {v12}, Lr/k;->n()V

    iget-object v12, v14, Lq/d;->e:Lr/m;

    invoke-virtual {v12}, Lr/m;->m()V

    iput-boolean v10, v11, Lr/e;->c:Z

    :goto_e
    iget-object v12, v11, Lr/e;->d:Lq/e;

    invoke-virtual {v11, v12}, Lr/e;->b(Lq/e;)V

    .line 23
    iput v10, v14, Lq/d;->Y:I

    .line 24
    iput v10, v14, Lq/d;->Z:I

    .line 25
    invoke-virtual {v14, v10}, Lq/d;->k(I)I

    move-result v12

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lq/d;->k(I)I

    move-result v13

    iget-boolean v10, v11, Lr/e;->b:Z

    if-eqz v10, :cond_16

    invoke-virtual {v11}, Lr/e;->c()V

    :cond_16
    invoke-virtual {v14}, Lq/d;->s()I

    move-result v10

    invoke-virtual {v14}, Lq/d;->t()I

    move-result v15

    move/from16 v19, v7

    iget-object v7, v14, Lq/d;->d:Lr/k;

    iget-object v7, v7, Lr/o;->h:Lr/f;

    invoke-virtual {v7, v10}, Lr/f;->d(I)V

    iget-object v7, v14, Lq/d;->e:Lr/m;

    iget-object v7, v7, Lr/o;->h:Lr/f;

    invoke-virtual {v7, v15}, Lr/f;->d(I)V

    invoke-virtual {v11}, Lr/e;->g()V

    iget-object v7, v11, Lr/e;->e:Ljava/util/ArrayList;

    move-object/from16 v20, v1

    const/4 v1, 0x2

    if-eq v12, v1, :cond_19

    if-ne v13, v1, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v21, v3

    :cond_18
    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    :goto_f
    if-eqz v5, :cond_1b

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lr/o;

    invoke-virtual/range {v21 .. v21}, Lr/o;->k()Z

    move-result v21

    if-nez v21, :cond_1a

    const/4 v5, 0x0

    :cond_1b
    if-eqz v5, :cond_1c

    const/4 v1, 0x2

    if-ne v12, v1, :cond_1c

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lq/d;->N(I)V

    move/from16 v21, v3

    const/4 v1, 0x0

    invoke-virtual {v11, v14, v1}, Lr/e;->d(Lq/e;I)I

    move-result v3

    invoke-virtual {v14, v3}, Lq/d;->P(I)V

    iget-object v1, v14, Lq/d;->d:Lr/k;

    iget-object v1, v1, Lr/o;->e:Lr/g;

    invoke-virtual {v14}, Lq/d;->r()I

    move-result v3

    invoke-virtual {v1, v3}, Lr/g;->d(I)V

    goto :goto_10

    :cond_1c
    move/from16 v21, v3

    :goto_10
    if-eqz v5, :cond_18

    const/4 v1, 0x2

    if-ne v13, v1, :cond_18

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lq/d;->O(I)V

    invoke-virtual {v11, v14, v1}, Lr/e;->d(Lq/e;I)I

    move-result v3

    invoke-virtual {v14, v3}, Lq/d;->M(I)V

    iget-object v3, v14, Lq/d;->e:Lr/m;

    iget-object v3, v3, Lr/o;->e:Lr/g;

    invoke-virtual {v14}, Lq/d;->l()I

    move-result v5

    invoke-virtual {v3, v5}, Lr/g;->d(I)V

    :goto_11
    iget-object v3, v14, Lq/d;->p0:[I

    move/from16 v22, v4

    const/4 v5, 0x0

    aget v4, v3, v5

    if-eq v4, v1, :cond_1e

    const/4 v1, 0x4

    if-ne v4, v1, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v1, 0x0

    goto :goto_13

    :cond_1e
    :goto_12
    invoke-virtual {v14}, Lq/d;->r()I

    move-result v1

    add-int/2addr v1, v10

    iget-object v4, v14, Lq/d;->d:Lr/k;

    iget-object v4, v4, Lr/o;->i:Lr/f;

    invoke-virtual {v4, v1}, Lr/f;->d(I)V

    iget-object v4, v14, Lq/d;->d:Lr/k;

    iget-object v4, v4, Lr/o;->e:Lr/g;

    sub-int/2addr v1, v10

    invoke-virtual {v4, v1}, Lr/g;->d(I)V

    invoke-virtual {v11}, Lr/e;->g()V

    const/4 v1, 0x1

    aget v3, v3, v1

    if-eq v3, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v3, v1, :cond_20

    :cond_1f
    invoke-virtual {v14}, Lq/d;->l()I

    move-result v1

    add-int/2addr v1, v15

    iget-object v3, v14, Lq/d;->e:Lr/m;

    iget-object v3, v3, Lr/o;->i:Lr/f;

    invoke-virtual {v3, v1}, Lr/f;->d(I)V

    iget-object v3, v14, Lq/d;->e:Lr/m;

    iget-object v3, v3, Lr/o;->e:Lr/g;

    sub-int/2addr v1, v15

    invoke-virtual {v3, v1}, Lr/g;->d(I)V

    :cond_20
    invoke-virtual {v11}, Lr/e;->g()V

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/o;

    iget-object v5, v4, Lr/o;->b:Lq/d;

    if-ne v5, v14, :cond_21

    iget-boolean v5, v4, Lr/o;->g:Z

    if-nez v5, :cond_21

    goto :goto_14

    :cond_21
    invoke-virtual {v4}, Lr/o;->e()V

    goto :goto_14

    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/o;

    if-nez v1, :cond_24

    iget-object v5, v4, Lr/o;->b:Lq/d;

    if-ne v5, v14, :cond_24

    goto :goto_15

    :cond_24
    iget-object v5, v4, Lr/o;->h:Lr/f;

    iget-boolean v5, v5, Lr/f;->j:Z

    if-nez v5, :cond_25

    :goto_16
    const/4 v1, 0x0

    goto :goto_17

    :cond_25
    iget-object v5, v4, Lr/o;->i:Lr/f;

    iget-boolean v5, v5, Lr/f;->j:Z

    if-nez v5, :cond_26

    instance-of v5, v4, Lr/i;

    if-nez v5, :cond_26

    goto :goto_16

    :cond_26
    iget-object v5, v4, Lr/o;->e:Lr/g;

    iget-boolean v5, v5, Lr/f;->j:Z

    if-nez v5, :cond_23

    instance-of v5, v4, Lr/c;

    if-nez v5, :cond_23

    instance-of v4, v4, Lr/i;

    if-nez v4, :cond_23

    goto :goto_16

    :cond_27
    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v14, v12}, Lq/d;->N(I)V

    invoke-virtual {v14, v13}, Lq/d;->O(I)V

    move v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v7, 0x2

    goto/16 :goto_1b

    :cond_28
    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v19, v7

    .line 26
    iget-boolean v1, v11, Lr/e;->b:Z

    .line 27
    iget-object v3, v11, Lr/e;->a:Lq/e;

    if-eqz v1, :cond_2a

    iget-object v1, v3, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq/d;

    invoke-virtual {v4}, Lq/d;->i()V

    const/4 v7, 0x0

    iput-boolean v7, v4, Lq/d;->a:Z

    iget-object v10, v4, Lq/d;->d:Lr/k;

    iget-object v12, v10, Lr/o;->e:Lr/g;

    iput-boolean v7, v12, Lr/f;->j:Z

    iput-boolean v7, v10, Lr/o;->g:Z

    invoke-virtual {v10}, Lr/k;->n()V

    iget-object v4, v4, Lq/d;->e:Lr/m;

    iget-object v10, v4, Lr/o;->e:Lr/g;

    iput-boolean v7, v10, Lr/f;->j:Z

    iput-boolean v7, v4, Lr/o;->g:Z

    invoke-virtual {v4}, Lr/m;->m()V

    goto :goto_18

    :cond_29
    const/4 v7, 0x0

    invoke-virtual {v3}, Lq/d;->i()V

    iput-boolean v7, v3, Lq/d;->a:Z

    iget-object v1, v3, Lq/d;->d:Lr/k;

    iget-object v4, v1, Lr/o;->e:Lr/g;

    iput-boolean v7, v4, Lr/f;->j:Z

    iput-boolean v7, v1, Lr/o;->g:Z

    invoke-virtual {v1}, Lr/k;->n()V

    iget-object v1, v3, Lq/d;->e:Lr/m;

    iget-object v4, v1, Lr/o;->e:Lr/g;

    iput-boolean v7, v4, Lr/f;->j:Z

    iput-boolean v7, v1, Lr/o;->g:Z

    invoke-virtual {v1}, Lr/m;->m()V

    invoke-virtual {v11}, Lr/e;->c()V

    goto :goto_19

    :cond_2a
    const/4 v7, 0x0

    :goto_19
    iget-object v1, v11, Lr/e;->d:Lq/e;

    invoke-virtual {v11, v1}, Lr/e;->b(Lq/e;)V

    .line 28
    iput v7, v3, Lq/d;->Y:I

    .line 29
    iput v7, v3, Lq/d;->Z:I

    .line 30
    iget-object v1, v3, Lq/d;->d:Lr/k;

    iget-object v1, v1, Lr/o;->h:Lr/f;

    invoke-virtual {v1, v7}, Lr/f;->d(I)V

    iget-object v1, v3, Lq/d;->e:Lr/m;

    iget-object v1, v1, Lr/o;->h:Lr/f;

    invoke-virtual {v1, v7}, Lr/f;->d(I)V

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_2b

    .line 31
    invoke-virtual {v6, v7, v5}, Lq/e;->V(IZ)Z

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    move v7, v4

    goto :goto_1a

    :cond_2b
    const/4 v4, 0x1

    move v3, v4

    const/4 v7, 0x0

    :goto_1a
    if-ne v9, v1, :cond_2c

    invoke-virtual {v6, v4, v5}, Lq/e;->V(IZ)Z

    move-result v5

    and-int/2addr v3, v5

    add-int/lit8 v7, v7, 0x1

    :cond_2c
    :goto_1b
    if-eqz v3, :cond_30

    if-ne v8, v1, :cond_2d

    const/4 v4, 0x1

    goto :goto_1c

    :cond_2d
    const/4 v4, 0x0

    :goto_1c
    if-ne v9, v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v6, v4, v1}, Lq/e;->Q(ZZ)V

    goto :goto_1e

    :cond_2f
    move-object/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v19, v7

    const/4 v3, 0x0

    const/4 v7, 0x0

    :cond_30
    :goto_1e
    if-eqz v3, :cond_31

    const/4 v1, 0x2

    if-eq v7, v1, :cond_58

    .line 32
    :cond_31
    iget v1, v6, Lq/e;->D0:I

    if-lez v2, :cond_3f

    .line 33
    iget-object v3, v6, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x40

    invoke-virtual {v6, v4}, Lq/e;->X(I)Z

    move-result v4

    .line 34
    iget-object v5, v6, Lq/e;->u0:Landroidx/constraintlayout/widget/e;

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v3, :cond_3d

    .line 35
    iget-object v8, v6, Lq/l;->q0:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq/d;

    instance-of v9, v8, Lq/h;

    if-eqz v9, :cond_32

    :goto_20
    const/4 v9, 0x3

    goto/16 :goto_22

    :cond_32
    instance-of v9, v8, Lq/a;

    if-eqz v9, :cond_33

    goto :goto_20

    .line 36
    :cond_33
    iget-boolean v9, v8, Lq/d;->F:Z

    if-eqz v9, :cond_34

    goto :goto_20

    :cond_34
    if-eqz v4, :cond_35

    .line 37
    iget-object v9, v8, Lq/d;->d:Lr/k;

    if-eqz v9, :cond_35

    iget-object v10, v8, Lq/d;->e:Lr/m;

    if-eqz v10, :cond_35

    iget-object v9, v9, Lr/o;->e:Lr/g;

    iget-boolean v9, v9, Lr/f;->j:Z

    if-eqz v9, :cond_35

    iget-object v9, v10, Lr/o;->e:Lr/g;

    iget-boolean v9, v9, Lr/f;->j:Z

    if-eqz v9, :cond_35

    goto :goto_20

    :cond_35
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lq/d;->k(I)I

    move-result v10

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lq/d;->k(I)I

    move-result v11

    const/4 v12, 0x3

    if-ne v10, v12, :cond_36

    iget v13, v8, Lq/d;->r:I

    if-eq v13, v9, :cond_36

    if-ne v11, v12, :cond_36

    iget v12, v8, Lq/d;->s:I

    if-eq v12, v9, :cond_36

    move v12, v9

    goto :goto_21

    :cond_36
    const/4 v12, 0x0

    :goto_21
    if-nez v12, :cond_3a

    invoke-virtual {v6, v9}, Lq/e;->X(I)Z

    move-result v13

    if-eqz v13, :cond_3a

    instance-of v9, v8, Lq/g;

    if-nez v9, :cond_3a

    const/4 v9, 0x3

    if-ne v10, v9, :cond_37

    iget v13, v8, Lq/d;->r:I

    if-nez v13, :cond_37

    if-eq v11, v9, :cond_37

    invoke-virtual {v8}, Lq/d;->y()Z

    move-result v13

    if-nez v13, :cond_37

    const/4 v12, 0x1

    :cond_37
    if-ne v11, v9, :cond_38

    iget v13, v8, Lq/d;->s:I

    if-nez v13, :cond_38

    if-eq v10, v9, :cond_38

    invoke-virtual {v8}, Lq/d;->y()Z

    move-result v13

    if-nez v13, :cond_38

    const/4 v12, 0x1

    :cond_38
    if-eq v10, v9, :cond_39

    if-ne v11, v9, :cond_3b

    :cond_39
    iget v10, v8, Lq/d;->W:F

    cmpl-float v10, v10, v16

    if-lez v10, :cond_3b

    goto :goto_22

    :cond_3a
    const/4 v9, 0x3

    :cond_3b
    if-eqz v12, :cond_3c

    goto :goto_22

    :cond_3c
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8, v5}, Lv1/t;->n(ILq/d;Landroidx/constraintlayout/widget/e;)Z

    :goto_22
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1f

    .line 38
    :cond_3d
    iget-object v3, v5, Landroidx/constraintlayout/widget/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_3e

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_3e
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3f

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_3f

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 40
    :cond_3f
    invoke-virtual {v0, v6}, Lv1/t;->u(Lq/e;)V

    iget-object v3, v0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, v21

    move/from16 v5, v22

    if-lez v2, :cond_40

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v4, v5}, Lv1/t;->t(Lq/e;III)V

    goto :goto_25

    :cond_40
    const/4 v2, 0x0

    :goto_25
    if-lez v3, :cond_57

    .line 41
    iget-object v7, v6, Lq/d;->p0:[I

    aget v8, v7, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_41

    const/4 v8, 0x1

    :goto_26
    const/4 v10, 0x1

    goto :goto_27

    :cond_41
    move v8, v2

    goto :goto_26

    .line 42
    :goto_27
    aget v7, v7, v10

    if-ne v7, v9, :cond_42

    const/4 v7, 0x1

    goto :goto_28

    :cond_42
    move v7, v2

    .line 43
    :goto_28
    invoke-virtual/range {p1 .. p1}, Lq/d;->r()I

    move-result v9

    iget-object v10, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v10, Lq/e;

    .line 44
    iget v10, v10, Lq/d;->b0:I

    .line 45
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lq/d;->l()I

    move-result v10

    iget-object v11, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v11, Lq/e;

    .line 46
    iget v11, v11, Lq/d;->c0:I

    .line 47
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v2

    move/from16 v17, v11

    :goto_29
    if-ge v11, v3, :cond_48

    iget-object v13, v0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq/d;

    instance-of v14, v13, Lq/g;

    if-nez v14, :cond_43

    move/from16 v16, v1

    move-object/from16 v2, v20

    goto/16 :goto_2b

    :cond_43
    invoke-virtual {v13}, Lq/d;->r()I

    move-result v14

    invoke-virtual {v13}, Lq/d;->l()I

    move-result v15

    move-object/from16 v2, v20

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v13, v2}, Lv1/t;->n(ILq/d;Landroidx/constraintlayout/widget/e;)Z

    move-result v16

    or-int v12, v17, v16

    move/from16 p3, v12

    invoke-virtual {v13}, Lq/d;->r()I

    move-result v12

    move/from16 v16, v1

    invoke-virtual {v13}, Lq/d;->l()I

    move-result v1

    if-eq v12, v14, :cond_45

    invoke-virtual {v13, v12}, Lq/d;->P(I)V

    if-eqz v8, :cond_44

    .line 48
    invoke-virtual {v13}, Lq/d;->s()I

    move-result v12

    iget v14, v13, Lq/d;->U:I

    add-int/2addr v12, v14

    if-le v12, v9, :cond_44

    invoke-virtual {v13}, Lq/d;->s()I

    move-result v12

    iget v14, v13, Lq/d;->U:I

    add-int/2addr v12, v14

    const/4 v14, 0x4

    .line 49
    invoke-virtual {v13, v14}, Lq/d;->j(I)Lq/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lq/c;->e()I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_44
    const/4 v12, 0x1

    goto :goto_2a

    :cond_45
    move/from16 v12, p3

    :goto_2a
    if-eq v1, v15, :cond_47

    invoke-virtual {v13, v1}, Lq/d;->M(I)V

    if-eqz v7, :cond_46

    .line 50
    invoke-virtual {v13}, Lq/d;->t()I

    move-result v1

    iget v12, v13, Lq/d;->V:I

    add-int/2addr v1, v12

    if-le v1, v10, :cond_46

    invoke-virtual {v13}, Lq/d;->t()I

    move-result v1

    iget v12, v13, Lq/d;->V:I

    add-int/2addr v1, v12

    const/4 v12, 0x5

    .line 51
    invoke-virtual {v13, v12}, Lq/d;->j(I)Lq/c;

    move-result-object v12

    invoke-virtual {v12}, Lq/c;->e()I

    move-result v12

    add-int/2addr v12, v1

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_46
    const/4 v12, 0x1

    :cond_47
    check-cast v13, Lq/g;

    .line 52
    iget-boolean v1, v13, Lq/g;->y0:Z

    or-int/2addr v1, v12

    move/from16 v17, v1

    :goto_2b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v2

    move/from16 v1, v16

    const/4 v2, 0x0

    goto/16 :goto_29

    :cond_48
    move/from16 v16, v1

    move-object/from16 v2, v20

    const/4 v1, 0x0

    const/4 v11, 0x2

    :goto_2c
    if-ge v1, v11, :cond_56

    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v3, :cond_55

    .line 53
    iget-object v13, v0, Lv1/t;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lq/d;

    instance-of v14, v13, Lq/i;

    if-eqz v14, :cond_49

    instance-of v14, v13, Lq/g;

    if-eqz v14, :cond_4d

    :cond_49
    instance-of v14, v13, Lq/h;

    if-eqz v14, :cond_4a

    goto :goto_2e

    .line 54
    :cond_4a
    iget v14, v13, Lq/d;->g0:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_4b

    goto :goto_2e

    :cond_4b
    if-eqz v19, :cond_4c

    .line 55
    iget-object v14, v13, Lq/d;->d:Lr/k;

    iget-object v14, v14, Lr/o;->e:Lr/g;

    iget-boolean v14, v14, Lr/f;->j:Z

    if-eqz v14, :cond_4c

    iget-object v14, v13, Lq/d;->e:Lr/m;

    iget-object v14, v14, Lr/o;->e:Lr/g;

    iget-boolean v14, v14, Lr/f;->j:Z

    if-eqz v14, :cond_4c

    goto :goto_2e

    :cond_4c
    instance-of v14, v13, Lq/g;

    if-eqz v14, :cond_4e

    :cond_4d
    :goto_2e
    move-object/from16 v20, v2

    move/from16 p3, v3

    const/4 v3, 0x5

    const/4 v14, 0x4

    goto/16 :goto_33

    :cond_4e
    invoke-virtual {v13}, Lq/d;->r()I

    move-result v14

    invoke-virtual {v13}, Lq/d;->l()I

    move-result v15

    .line 56
    iget v11, v13, Lq/d;->a0:I

    move/from16 p3, v3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4f

    const/4 v3, 0x2

    .line 57
    :cond_4f
    invoke-virtual {v0, v3, v13, v2}, Lv1/t;->n(ILq/d;Landroidx/constraintlayout/widget/e;)Z

    move-result v3

    or-int v3, v17, v3

    move-object/from16 v20, v2

    invoke-virtual {v13}, Lq/d;->r()I

    move-result v2

    move/from16 v17, v3

    invoke-virtual {v13}, Lq/d;->l()I

    move-result v3

    if-eq v2, v14, :cond_51

    invoke-virtual {v13, v2}, Lq/d;->P(I)V

    if-eqz v8, :cond_50

    .line 58
    invoke-virtual {v13}, Lq/d;->s()I

    move-result v2

    iget v14, v13, Lq/d;->U:I

    add-int/2addr v2, v14

    if-le v2, v9, :cond_50

    invoke-virtual {v13}, Lq/d;->s()I

    move-result v2

    iget v14, v13, Lq/d;->U:I

    add-int/2addr v2, v14

    const/4 v14, 0x4

    .line 59
    invoke-virtual {v13, v14}, Lq/d;->j(I)Lq/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lq/c;->e()I

    move-result v17

    add-int v2, v17, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2f

    :cond_50
    const/4 v14, 0x4

    :goto_2f
    const/16 v18, 0x1

    goto :goto_30

    :cond_51
    const/4 v14, 0x4

    move/from16 v18, v17

    :goto_30
    if-eq v3, v15, :cond_53

    invoke-virtual {v13, v3}, Lq/d;->M(I)V

    if-eqz v7, :cond_52

    .line 60
    invoke-virtual {v13}, Lq/d;->t()I

    move-result v2

    iget v3, v13, Lq/d;->V:I

    add-int/2addr v2, v3

    if-le v2, v10, :cond_52

    invoke-virtual {v13}, Lq/d;->t()I

    move-result v2

    iget v3, v13, Lq/d;->V:I

    add-int/2addr v2, v3

    const/4 v3, 0x5

    .line 61
    invoke-virtual {v13, v3}, Lq/d;->j(I)Lq/c;

    move-result-object v15

    invoke-virtual {v15}, Lq/c;->e()I

    move-result v15

    add-int/2addr v15, v2

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_31

    :cond_52
    const/4 v3, 0x5

    :goto_31
    const/16 v18, 0x1

    goto :goto_32

    :cond_53
    const/4 v3, 0x5

    .line 62
    :goto_32
    iget-boolean v2, v13, Lq/d;->E:Z

    if-eqz v2, :cond_54

    .line 63
    iget v2, v13, Lq/d;->a0:I

    if-eq v11, v2, :cond_54

    const/16 v17, 0x1

    goto :goto_33

    :cond_54
    move/from16 v17, v18

    :goto_33
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p3

    move-object/from16 v2, v20

    const/4 v11, 0x2

    goto/16 :goto_2d

    :cond_55
    move-object/from16 v20, v2

    move/from16 p3, v3

    const/4 v3, 0x5

    const/4 v14, 0x4

    if-eqz v17, :cond_56

    add-int/lit8 v1, v1, 0x1

    .line 64
    invoke-virtual {v0, v6, v1, v4, v5}, Lv1/t;->t(Lq/e;III)V

    move/from16 v3, p3

    move-object/from16 v2, v20

    const/4 v11, 0x2

    const/16 v17, 0x0

    goto/16 :goto_2c

    :cond_56
    move/from16 v0, v16

    goto :goto_34

    :cond_57
    move v0, v1

    .line 65
    :goto_34
    iput v0, v6, Lq/e;->D0:I

    const/16 v0, 0x200

    invoke-virtual {v6, v0}, Lq/e;->X(I)Z

    move-result v0

    sput-boolean v0, Lo/d;->p:Z

    :cond_58
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/o;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/o;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/p;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Lq/e;

    .line 4
    .line 5
    iput p1, v0, Lq/e;->D0:I

    .line 6
    .line 7
    const/16 p1, 0x200

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lq/e;->X(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Lo/d;->p:Z

    .line 14
    .line 15
    return-void
.end method

.method public setSelfDimensionBehaviour(Lq/e;IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/e;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/e;->e:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/e;->d:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    const/high16 v5, 0x40000000    # 2.0f

    .line 14
    .line 15
    const/high16 v6, -0x80000000

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    if-eq p2, v6, :cond_4

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    if-eq p2, v5, :cond_0

    .line 23
    .line 24
    move p3, v3

    .line 25
    :goto_0
    move p2, v4

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 28
    .line 29
    sub-int/2addr p2, v0

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-nez v2, :cond_3

    .line 36
    .line 37
    :goto_1
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 38
    .line 39
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    :cond_2
    :goto_2
    move p2, v7

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move p3, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    if-nez v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_3
    if-eq p4, v6, :cond_8

    .line 51
    .line 52
    if-eqz p4, :cond_6

    .line 53
    .line 54
    if-eq p4, v5, :cond_5

    .line 55
    .line 56
    move p5, v3

    .line 57
    :goto_4
    move v7, v4

    .line 58
    goto :goto_6

    .line 59
    :cond_5
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 60
    .line 61
    sub-int/2addr p4, v1

    .line 62
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result p5

    .line 66
    goto :goto_4

    .line 67
    :cond_6
    if-nez v2, :cond_7

    .line 68
    .line 69
    :goto_5
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 70
    .line 71
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    goto :goto_6

    .line 76
    :cond_7
    move p5, v3

    .line 77
    goto :goto_6

    .line 78
    :cond_8
    if-nez v2, :cond_9

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_9
    :goto_6
    invoke-virtual {p1}, Lq/d;->r()I

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-ne p3, p4, :cond_a

    .line 86
    .line 87
    invoke-virtual {p1}, Lq/d;->l()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    if-eq p5, p4, :cond_b

    .line 92
    .line 93
    :cond_a
    iget-object p4, p1, Lq/e;->s0:Lr/e;

    .line 94
    .line 95
    iput-boolean v4, p4, Lr/e;->c:Z

    .line 96
    .line 97
    :cond_b
    iput v3, p1, Lq/d;->Y:I

    .line 98
    .line 99
    iput v3, p1, Lq/d;->Z:I

    .line 100
    .line 101
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 102
    .line 103
    sub-int/2addr p4, v0

    .line 104
    iget-object v2, p1, Lq/d;->C:[I

    .line 105
    .line 106
    aput p4, v2, v3

    .line 107
    .line 108
    iget p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 109
    .line 110
    sub-int/2addr p4, v1

    .line 111
    aput p4, v2, v4

    .line 112
    .line 113
    iput v3, p1, Lq/d;->b0:I

    .line 114
    .line 115
    iput v3, p1, Lq/d;->c0:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lq/d;->N(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Lq/d;->P(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v7}, Lq/d;->O(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p5}, Lq/d;->M(I)V

    .line 127
    .line 128
    .line 129
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 130
    .line 131
    sub-int/2addr p2, v0

    .line 132
    if-gez p2, :cond_c

    .line 133
    .line 134
    iput v3, p1, Lq/d;->b0:I

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    iput p2, p1, Lq/d;->b0:I

    .line 138
    .line 139
    :goto_7
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 140
    .line 141
    sub-int/2addr p2, v1

    .line 142
    if-gez p2, :cond_d

    .line 143
    .line 144
    iput v3, p1, Lq/d;->c0:I

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_d
    iput p2, p1, Lq/d;->c0:I

    .line 148
    .line 149
    :goto_8
    return-void
.end method

.method public setState(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/h;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    int-to-float p2, p2

    .line 6
    int-to-float p3, p3

    .line 7
    iget v1, v0, Landroidx/constraintlayout/widget/h;->b:I

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/widget/h;->d:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, -0x1

    .line 14
    iget-object v6, v0, Landroidx/constraintlayout/widget/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    if-ne v1, p1, :cond_8

    .line 17
    .line 18
    if-ne p1, v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/f;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget v1, v0, Landroidx/constraintlayout/widget/h;->c:I

    .line 33
    .line 34
    if-eq v1, v5, :cond_1

    .line 35
    .line 36
    iget-object v2, p1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroidx/constraintlayout/widget/g;

    .line 43
    .line 44
    invoke-virtual {v1, p2, p3}, Landroidx/constraintlayout/widget/g;->a(FF)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :cond_1
    :goto_2
    iget-object v1, p1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v4, v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroidx/constraintlayout/widget/g;

    .line 65
    .line 66
    invoke-virtual {v1, p2, p3}, Landroidx/constraintlayout/widget/g;->a(FF)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v4, v5

    .line 77
    :goto_3
    iget p2, v0, Landroidx/constraintlayout/widget/h;->c:I

    .line 78
    .line 79
    if-ne p2, v4, :cond_4

    .line 80
    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 84
    .line 85
    if-ne v4, v5, :cond_5

    .line 86
    .line 87
    move-object p2, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Landroidx/constraintlayout/widget/g;

    .line 94
    .line 95
    iget-object p2, p2, Landroidx/constraintlayout/widget/g;->f:Landroidx/constraintlayout/widget/o;

    .line 96
    .line 97
    :goto_4
    if-ne v4, v5, :cond_6

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroidx/constraintlayout/widget/g;

    .line 105
    .line 106
    iget p1, p1, Landroidx/constraintlayout/widget/g;->e:I

    .line 107
    .line 108
    :goto_5
    if-nez p2, :cond_7

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_7
    iput v4, v0, Landroidx/constraintlayout/widget/h;->c:I

    .line 112
    .line 113
    invoke-virtual {p2, v6}, Landroidx/constraintlayout/widget/o;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 114
    .line 115
    .line 116
    :goto_6
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/o;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 120
    .line 121
    .line 122
    goto :goto_b

    .line 123
    :cond_8
    iput p1, v0, Landroidx/constraintlayout/widget/h;->b:I

    .line 124
    .line 125
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Landroidx/constraintlayout/widget/f;

    .line 130
    .line 131
    :goto_7
    iget-object v1, p1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-ge v4, v2, :cond_a

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroidx/constraintlayout/widget/g;

    .line 144
    .line 145
    invoke-virtual {v1, p2, p3}, Landroidx/constraintlayout/widget/g;->a(FF)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_9

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_7

    .line 155
    :cond_a
    move v4, v5

    .line 156
    :goto_8
    iget-object p2, p1, Landroidx/constraintlayout/widget/f;->b:Ljava/util/ArrayList;

    .line 157
    .line 158
    if-ne v4, v5, :cond_b

    .line 159
    .line 160
    iget-object p1, p1, Landroidx/constraintlayout/widget/f;->d:Landroidx/constraintlayout/widget/o;

    .line 161
    .line 162
    goto :goto_9

    .line 163
    :cond_b
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroidx/constraintlayout/widget/g;

    .line 168
    .line 169
    iget-object p1, p1, Landroidx/constraintlayout/widget/g;->f:Landroidx/constraintlayout/widget/o;

    .line 170
    .line 171
    :goto_9
    if-ne v4, v5, :cond_c

    .line 172
    .line 173
    goto :goto_a

    .line 174
    :cond_c
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Landroidx/constraintlayout/widget/g;

    .line 179
    .line 180
    iget p2, p2, Landroidx/constraintlayout/widget/g;->e:I

    .line 181
    .line 182
    :goto_a
    if-nez p1, :cond_d

    .line 183
    .line 184
    goto :goto_b

    .line 185
    :cond_d
    iput v4, v0, Landroidx/constraintlayout/widget/h;->c:I

    .line 186
    .line 187
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/widget/o;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_e
    :goto_b
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
