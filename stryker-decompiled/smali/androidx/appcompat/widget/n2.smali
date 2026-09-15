.class public abstract Landroidx/appcompat/widget/n2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/n2;->mBaselineAligned:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Landroidx/appcompat/widget/n2;->mBaselineChildTop:I

    .line 12
    .line 13
    const v3, 0x800033

    .line 14
    .line 15
    .line 16
    iput v3, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    .line 17
    .line 18
    sget-object v6, Le/a;->o:[I

    .line 19
    .line 20
    invoke-virtual {p1, p2, v6, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, p0

    .line 25
    move-object v5, p1

    .line 26
    move-object v7, p2

    .line 27
    move-object v8, v3

    .line 28
    move v9, p3

    .line 29
    invoke-static/range {v4 .. v9}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-ltz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/n2;->setOrientation(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-ltz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/n2;->setGravity(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    const/4 p2, 0x2

    .line 51
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/n2;->setBaselineAligned(Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 p2, 0x4

    .line 61
    const/high16 p3, -0x40800000    # -1.0f

    .line 62
    .line 63
    invoke-virtual {v3, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iput p2, p0, Landroidx/appcompat/widget/n2;->mWeightSum:F

    .line 68
    .line 69
    const/4 p2, 0x3

    .line 70
    invoke-virtual {v3, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iput p2, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    .line 75
    .line 76
    const/4 p2, 0x7

    .line 77
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput-boolean p2, p0, Landroidx/appcompat/widget/n2;->mUseLargestChild:Z

    .line 82
    .line 83
    const/4 p2, 0x5

    .line 84
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-eqz p3, :cond_3

    .line 89
    .line 90
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_3

    .line 95
    .line 96
    invoke-static {p1, p3}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n2;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    const/16 p1, 0x8

    .line 109
    .line 110
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    .line 115
    .line 116
    const/4 p1, 0x6

    .line 117
    invoke-virtual {v3, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    .line 125
    .line 126
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/appcompat/widget/m2;

    return p1
.end method

.method public drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/m2;

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    sub-int/2addr v3, v4

    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/n2;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    :goto_2
    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/m2;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n2;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_6
    return-void
.end method

.method public drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/m2;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/n2;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/m2;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/n2;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_3
    return-void
.end method

.method public drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p2, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/n2;->generateDefaultLayoutParams()Landroidx/appcompat/widget/m2;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/m2;
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/m2;

    .line 2
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/m2;

    const/4 v2, -0x1

    .line 4
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n2;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n2;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/m2;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m2;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/m2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/m2;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/m2;

    .line 4
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    iget v0, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/n2;->mBaselineChildTop:I

    iget v3, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    const/16 v4, 0x50

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/m2;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method public getChildrenSkipCount(Landroid/view/View;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    return v0
.end method

.method public getLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getNextLocationOffset(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getVirtualChildCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mWeightSum:F

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    iget p1, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    iget v2, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int/2addr p1, v1

    :goto_0
    if-ltz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/n2;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/n2;->mUseLargestChild:Z

    return v0
.end method

.method public layoutHorizontal(IIII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sub-int v3, p4, p2

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    sub-int v4, v3, v4

    .line 18
    .line 19
    sub-int/2addr v3, v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    sub-int/2addr v3, v5

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget v6, v0, Landroidx/appcompat/widget/n2;->mGravity:I

    .line 30
    .line 31
    const v7, 0x800007

    .line 32
    .line 33
    .line 34
    and-int/2addr v7, v6

    .line 35
    and-int/lit8 v6, v6, 0x70

    .line 36
    .line 37
    iget-boolean v8, v0, Landroidx/appcompat/widget/n2;->mBaselineAligned:Z

    .line 38
    .line 39
    iget-object v9, v0, Landroidx/appcompat/widget/n2;->mMaxAscent:[I

    .line 40
    .line 41
    iget-object v10, v0, Landroidx/appcompat/widget/n2;->mMaxDescent:[I

    .line 42
    .line 43
    sget-object v11, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 44
    .line 45
    invoke-static/range {p0 .. p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    invoke-static {v7, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const/4 v11, 0x2

    .line 54
    const/4 v12, 0x1

    .line 55
    if-eq v7, v12, :cond_1

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    if-eq v7, v13, :cond_0

    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    add-int v7, v7, p3

    .line 70
    .line 71
    sub-int v7, v7, p1

    .line 72
    .line 73
    iget v13, v0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 74
    .line 75
    sub-int/2addr v7, v13

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    sub-int v13, p3, p1

    .line 82
    .line 83
    iget v14, v0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 84
    .line 85
    sub-int/2addr v13, v14

    .line 86
    div-int/2addr v13, v11

    .line 87
    add-int/2addr v7, v13

    .line 88
    :goto_0
    const/4 v13, 0x0

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    add-int/lit8 v1, v5, -0x1

    .line 92
    .line 93
    const/4 v15, -0x1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v15, v12

    .line 96
    move v1, v13

    .line 97
    :goto_1
    if-ge v13, v5, :cond_d

    .line 98
    .line 99
    mul-int v16, v15, v13

    .line 100
    .line 101
    add-int v12, v16, v1

    .line 102
    .line 103
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    if-nez v11, :cond_3

    .line 108
    .line 109
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    add-int/2addr v11, v7

    .line 114
    move/from16 p3, v1

    .line 115
    .line 116
    move/from16 v17, v5

    .line 117
    .line 118
    move/from16 v16, v6

    .line 119
    .line 120
    move/from16 v18, v8

    .line 121
    .line 122
    move v7, v11

    .line 123
    :goto_2
    move/from16 v19, v15

    .line 124
    .line 125
    :goto_3
    const/4 v1, 0x1

    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    move/from16 p3, v1

    .line 133
    .line 134
    const/16 v1, 0x8

    .line 135
    .line 136
    if-eq v14, v1, :cond_c

    .line 137
    .line 138
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    .line 148
    .line 149
    move-result-object v16

    .line 150
    move/from16 v17, v5

    .line 151
    .line 152
    move-object/from16 v5, v16

    .line 153
    .line 154
    check-cast v5, Landroidx/appcompat/widget/m2;

    .line 155
    .line 156
    move/from16 v16, v6

    .line 157
    .line 158
    if-eqz v8, :cond_4

    .line 159
    .line 160
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    .line 162
    move/from16 v18, v8

    .line 163
    .line 164
    const/4 v8, -0x1

    .line 165
    if-eq v6, v8, :cond_5

    .line 166
    .line 167
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    goto :goto_4

    .line 172
    :cond_4
    move/from16 v18, v8

    .line 173
    .line 174
    :cond_5
    const/4 v8, -0x1

    .line 175
    :goto_4
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    .line 177
    if-gez v6, :cond_6

    .line 178
    .line 179
    move/from16 v6, v16

    .line 180
    .line 181
    :cond_6
    and-int/lit8 v6, v6, 0x70

    .line 182
    .line 183
    move/from16 v19, v15

    .line 184
    .line 185
    const/16 v15, 0x10

    .line 186
    .line 187
    if-eq v6, v15, :cond_9

    .line 188
    .line 189
    const/16 v15, 0x30

    .line 190
    .line 191
    if-eq v6, v15, :cond_8

    .line 192
    .line 193
    const/16 v15, 0x50

    .line 194
    .line 195
    if-eq v6, v15, :cond_7

    .line 196
    .line 197
    move v6, v2

    .line 198
    const/4 v15, -0x1

    .line 199
    goto :goto_5

    .line 200
    :cond_7
    sub-int v6, v4, v14

    .line 201
    .line 202
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 203
    .line 204
    sub-int/2addr v6, v15

    .line 205
    const/4 v15, -0x1

    .line 206
    if-eq v8, v15, :cond_a

    .line 207
    .line 208
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 209
    .line 210
    .line 211
    move-result v20

    .line 212
    sub-int v20, v20, v8

    .line 213
    .line 214
    const/4 v8, 0x2

    .line 215
    aget v21, v10, v8

    .line 216
    .line 217
    sub-int v21, v21, v20

    .line 218
    .line 219
    sub-int v6, v6, v21

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_8
    const/4 v15, -0x1

    .line 223
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 224
    .line 225
    add-int/2addr v6, v2

    .line 226
    if-eq v8, v15, :cond_a

    .line 227
    .line 228
    const/16 v20, 0x1

    .line 229
    .line 230
    aget v21, v9, v20

    .line 231
    .line 232
    sub-int v21, v21, v8

    .line 233
    .line 234
    add-int v6, v21, v6

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_9
    const/4 v15, -0x1

    .line 238
    sub-int v6, v3, v14

    .line 239
    .line 240
    const/4 v8, 0x2

    .line 241
    div-int/2addr v6, v8

    .line 242
    add-int/2addr v6, v2

    .line 243
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 244
    .line 245
    add-int/2addr v6, v8

    .line 246
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 247
    .line 248
    sub-int/2addr v6, v8

    .line 249
    :cond_a
    :goto_5
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_b

    .line 254
    .line 255
    iget v8, v0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    .line 256
    .line 257
    add-int/2addr v7, v8

    .line 258
    :cond_b
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 259
    .line 260
    add-int/2addr v7, v8

    .line 261
    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/n2;->getLocationOffset(Landroid/view/View;)I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    add-int/2addr v8, v7

    .line 266
    add-int v15, v8, v1

    .line 267
    .line 268
    add-int/2addr v14, v6

    .line 269
    invoke-virtual {v11, v8, v6, v15, v14}, Landroid/view/View;->layout(IIII)V

    .line 270
    .line 271
    .line 272
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 273
    .line 274
    add-int/2addr v1, v5

    .line 275
    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    add-int/2addr v5, v1

    .line 280
    add-int/2addr v5, v7

    .line 281
    invoke-virtual {v0, v11, v12}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    add-int/2addr v13, v1

    .line 286
    move v7, v5

    .line 287
    goto/16 :goto_3

    .line 288
    .line 289
    :cond_c
    move/from16 v17, v5

    .line 290
    .line 291
    move/from16 v16, v6

    .line 292
    .line 293
    move/from16 v18, v8

    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :goto_6
    add-int/2addr v13, v1

    .line 298
    move v12, v1

    .line 299
    move/from16 v6, v16

    .line 300
    .line 301
    move/from16 v5, v17

    .line 302
    .line 303
    move/from16 v8, v18

    .line 304
    .line 305
    move/from16 v15, v19

    .line 306
    .line 307
    const/4 v11, 0x2

    .line 308
    move/from16 v1, p3

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_d
    return-void
.end method

.method public layoutVertical(IIII)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p3, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-int p1, p3, p1

    .line 11
    .line 12
    sub-int/2addr p3, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int/2addr p3, v1

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    .line 23
    .line 24
    and-int/lit8 v3, v2, 0x70

    .line 25
    .line 26
    const v4, 0x800007

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v4

    .line 30
    const/16 v4, 0x10

    .line 31
    .line 32
    if-eq v3, v4, :cond_1

    .line 33
    .line 34
    const/16 v4, 0x50

    .line 35
    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, p4

    .line 48
    sub-int/2addr v3, p2

    .line 49
    iget p2, p0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 50
    .line 51
    sub-int p2, v3, p2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr p4, p2

    .line 59
    iget p2, p0, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 60
    .line 61
    sub-int/2addr p4, p2

    .line 62
    div-int/lit8 p4, p4, 0x2

    .line 63
    .line 64
    add-int p2, p4, v3

    .line 65
    .line 66
    :goto_0
    const/4 p4, 0x0

    .line 67
    :goto_1
    if-ge p4, v1, :cond_8

    .line 68
    .line 69
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x1

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-int/2addr v3, p2

    .line 81
    move p2, v3

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/16 v6, 0x8

    .line 88
    .line 89
    if-eq v5, v6, :cond_7

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    check-cast v7, Landroidx/appcompat/widget/m2;

    .line 104
    .line 105
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 106
    .line 107
    if-gez v8, :cond_3

    .line 108
    .line 109
    move v8, v2

    .line 110
    :cond_3
    sget-object v9, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 111
    .line 112
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    and-int/lit8 v8, v8, 0x7

    .line 121
    .line 122
    if-eq v8, v4, :cond_5

    .line 123
    .line 124
    const/4 v9, 0x5

    .line 125
    if-eq v8, v9, :cond_4

    .line 126
    .line 127
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    .line 129
    add-int/2addr v8, v0

    .line 130
    goto :goto_3

    .line 131
    :cond_4
    sub-int v8, p1, v5

    .line 132
    .line 133
    :goto_2
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 134
    .line 135
    sub-int/2addr v8, v9

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    sub-int v8, p3, v5

    .line 138
    .line 139
    div-int/lit8 v8, v8, 0x2

    .line 140
    .line 141
    add-int/2addr v8, v0

    .line 142
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    .line 144
    add-int/2addr v8, v9

    .line 145
    goto :goto_2

    .line 146
    :goto_3
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_6

    .line 151
    .line 152
    iget v9, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    .line 153
    .line 154
    add-int/2addr p2, v9

    .line 155
    :cond_6
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 156
    .line 157
    add-int/2addr p2, v9

    .line 158
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/n2;->getLocationOffset(Landroid/view/View;)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    add-int/2addr v9, p2

    .line 163
    add-int/2addr v5, v8

    .line 164
    add-int v10, v9, v6

    .line 165
    .line 166
    invoke-virtual {v3, v8, v9, v5, v10}, Landroid/view/View;->layout(IIII)V

    .line 167
    .line 168
    .line 169
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 170
    .line 171
    add-int/2addr v6, v5

    .line 172
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    add-int/2addr v5, v6

    .line 177
    add-int/2addr v5, p2

    .line 178
    invoke-virtual {p0, v3, p4}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    add-int/2addr p4, p2

    .line 183
    move p2, v5

    .line 184
    :cond_7
    :goto_4
    add-int/2addr p4, v4

    .line 185
    goto :goto_1

    .line 186
    :cond_8
    return-void
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public measureHorizontal(II)V
    .locals 39

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    iput v9, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result v12

    .line 20
    iget-object v0, v7, Landroidx/appcompat/widget/n2;->mMaxAscent:[I

    .line 21
    .line 22
    const/4 v13, 0x4

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, v7, Landroidx/appcompat/widget/n2;->mMaxDescent:[I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    new-array v0, v13, [I

    .line 30
    .line 31
    iput-object v0, v7, Landroidx/appcompat/widget/n2;->mMaxAscent:[I

    .line 32
    .line 33
    new-array v0, v13, [I

    .line 34
    .line 35
    iput-object v0, v7, Landroidx/appcompat/widget/n2;->mMaxDescent:[I

    .line 36
    .line 37
    :cond_1
    iget-object v14, v7, Landroidx/appcompat/widget/n2;->mMaxAscent:[I

    .line 38
    .line 39
    iget-object v15, v7, Landroidx/appcompat/widget/n2;->mMaxDescent:[I

    .line 40
    .line 41
    const/16 v16, 0x3

    .line 42
    .line 43
    const/4 v6, -0x1

    .line 44
    aput v6, v14, v16

    .line 45
    .line 46
    const/16 v17, 0x2

    .line 47
    .line 48
    aput v6, v14, v17

    .line 49
    .line 50
    const/16 v18, 0x1

    .line 51
    .line 52
    aput v6, v14, v18

    .line 53
    .line 54
    aput v6, v14, v9

    .line 55
    .line 56
    aput v6, v15, v16

    .line 57
    .line 58
    aput v6, v15, v17

    .line 59
    .line 60
    aput v6, v15, v18

    .line 61
    .line 62
    aput v6, v15, v9

    .line 63
    .line 64
    iget-boolean v5, v7, Landroidx/appcompat/widget/n2;->mBaselineAligned:Z

    .line 65
    .line 66
    iget-boolean v4, v7, Landroidx/appcompat/widget/n2;->mUseLargestChild:Z

    .line 67
    .line 68
    const/high16 v3, 0x40000000    # 2.0f

    .line 69
    .line 70
    if-ne v11, v3, :cond_2

    .line 71
    .line 72
    move/from16 v19, v18

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move/from16 v19, v9

    .line 76
    .line 77
    :goto_0
    const/16 v20, 0x0

    .line 78
    .line 79
    move v1, v9

    .line 80
    move v2, v1

    .line 81
    move v13, v2

    .line 82
    move/from16 v21, v13

    .line 83
    .line 84
    move/from16 v22, v21

    .line 85
    .line 86
    move/from16 v23, v22

    .line 87
    .line 88
    move/from16 v25, v23

    .line 89
    .line 90
    move/from16 v27, v25

    .line 91
    .line 92
    move/from16 v26, v18

    .line 93
    .line 94
    move/from16 v0, v20

    .line 95
    .line 96
    :goto_1
    const/16 v6, 0x8

    .line 97
    .line 98
    if-ge v2, v10, :cond_15

    .line 99
    .line 100
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-nez v9, :cond_3

    .line 105
    .line 106
    iget v6, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 107
    .line 108
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    add-int/2addr v9, v6

    .line 113
    iput v9, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 114
    .line 115
    move/from16 v37, v4

    .line 116
    .line 117
    move/from16 v29, v5

    .line 118
    .line 119
    move v5, v1

    .line 120
    move v1, v3

    .line 121
    goto/16 :goto_10

    .line 122
    .line 123
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ne v3, v6, :cond_4

    .line 128
    .line 129
    invoke-virtual {v7, v9, v2}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    add-int/2addr v2, v3

    .line 134
    move/from16 v37, v4

    .line 135
    .line 136
    move/from16 v29, v5

    .line 137
    .line 138
    move v5, v1

    .line 139
    const/high16 v1, 0x40000000    # 2.0f

    .line 140
    .line 141
    goto/16 :goto_10

    .line 142
    .line 143
    :cond_4
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    iget v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 150
    .line 151
    iget v6, v7, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    .line 152
    .line 153
    add-int/2addr v3, v6

    .line 154
    iput v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 155
    .line 156
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    move-object v6, v3

    .line 161
    check-cast v6, Landroidx/appcompat/widget/m2;

    .line 162
    .line 163
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    .line 165
    add-float v32, v0, v3

    .line 166
    .line 167
    const/high16 v0, 0x40000000    # 2.0f

    .line 168
    .line 169
    if-ne v11, v0, :cond_8

    .line 170
    .line 171
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 172
    .line 173
    if-nez v0, :cond_8

    .line 174
    .line 175
    cmpl-float v0, v3, v20

    .line 176
    .line 177
    if-lez v0, :cond_8

    .line 178
    .line 179
    if-eqz v19, :cond_6

    .line 180
    .line 181
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 182
    .line 183
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 184
    .line 185
    move/from16 v33, v1

    .line 186
    .line 187
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 188
    .line 189
    add-int/2addr v3, v1

    .line 190
    add-int/2addr v3, v0

    .line 191
    iput v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    move/from16 v33, v1

    .line 195
    .line 196
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 197
    .line 198
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 199
    .line 200
    add-int/2addr v1, v0

    .line 201
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 202
    .line 203
    add-int/2addr v1, v3

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iput v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 209
    .line 210
    :goto_2
    if-eqz v5, :cond_7

    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 218
    .line 219
    .line 220
    move/from16 v37, v4

    .line 221
    .line 222
    move/from16 v29, v5

    .line 223
    .line 224
    move-object v3, v6

    .line 225
    move/from16 v35, v33

    .line 226
    .line 227
    const/16 v28, -0x2

    .line 228
    .line 229
    move/from16 v33, v2

    .line 230
    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :cond_7
    move/from16 v37, v4

    .line 234
    .line 235
    move/from16 v29, v5

    .line 236
    .line 237
    move-object v3, v6

    .line 238
    move/from16 v23, v18

    .line 239
    .line 240
    move/from16 v35, v33

    .line 241
    .line 242
    const/high16 v1, 0x40000000    # 2.0f

    .line 243
    .line 244
    const/16 v28, -0x2

    .line 245
    .line 246
    move/from16 v33, v2

    .line 247
    .line 248
    goto/16 :goto_7

    .line 249
    .line 250
    :cond_8
    move/from16 v33, v1

    .line 251
    .line 252
    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    .line 254
    if-nez v0, :cond_9

    .line 255
    .line 256
    cmpl-float v0, v3, v20

    .line 257
    .line 258
    if-lez v0, :cond_9

    .line 259
    .line 260
    const/4 v3, -0x2

    .line 261
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    goto :goto_3

    .line 265
    :cond_9
    const/4 v3, -0x2

    .line 266
    const/high16 v1, -0x80000000

    .line 267
    .line 268
    :goto_3
    cmpl-float v0, v32, v20

    .line 269
    .line 270
    if-nez v0, :cond_a

    .line 271
    .line 272
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 273
    .line 274
    move/from16 v29, v0

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    const/16 v29, 0x0

    .line 278
    .line 279
    :goto_4
    const/16 v34, 0x0

    .line 280
    .line 281
    const/high16 v31, 0x40000000    # 2.0f

    .line 282
    .line 283
    move-object/from16 v0, p0

    .line 284
    .line 285
    move/from16 v36, v1

    .line 286
    .line 287
    move/from16 v35, v33

    .line 288
    .line 289
    move-object v1, v9

    .line 290
    move/from16 v33, v2

    .line 291
    .line 292
    move/from16 v31, v3

    .line 293
    .line 294
    move/from16 v3, p1

    .line 295
    .line 296
    move/from16 v37, v4

    .line 297
    .line 298
    move/from16 v4, v29

    .line 299
    .line 300
    move/from16 v29, v5

    .line 301
    .line 302
    move/from16 v5, p2

    .line 303
    .line 304
    move-object/from16 v38, v6

    .line 305
    .line 306
    move/from16 v28, v31

    .line 307
    .line 308
    const/high16 v8, -0x80000000

    .line 309
    .line 310
    move/from16 v6, v34

    .line 311
    .line 312
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/n2;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 313
    .line 314
    .line 315
    move/from16 v0, v36

    .line 316
    .line 317
    move-object/from16 v3, v38

    .line 318
    .line 319
    if-eq v0, v8, :cond_b

    .line 320
    .line 321
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 322
    .line 323
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 328
    .line 329
    if-eqz v19, :cond_c

    .line 330
    .line 331
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 332
    .line 333
    add-int/2addr v2, v0

    .line 334
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 335
    .line 336
    add-int/2addr v2, v4

    .line 337
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    add-int/2addr v4, v2

    .line 342
    add-int/2addr v4, v1

    .line 343
    iput v4, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_c
    add-int v2, v1, v0

    .line 347
    .line 348
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    .line 350
    add-int/2addr v2, v4

    .line 351
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 352
    .line 353
    add-int/2addr v2, v4

    .line 354
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    add-int/2addr v4, v2

    .line 359
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 364
    .line 365
    :goto_5
    if-eqz v37, :cond_d

    .line 366
    .line 367
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    :cond_d
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    .line 372
    .line 373
    :goto_7
    if-eq v12, v1, :cond_e

    .line 374
    .line 375
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 376
    .line 377
    const/4 v2, -0x1

    .line 378
    if-ne v0, v2, :cond_e

    .line 379
    .line 380
    move/from16 v0, v18

    .line 381
    .line 382
    move/from16 v27, v0

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_e
    const/4 v0, 0x0

    .line 386
    :goto_8
    iget v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 387
    .line 388
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 389
    .line 390
    add-int/2addr v2, v4

    .line 391
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 392
    .line 393
    .line 394
    move-result v4

    .line 395
    add-int/2addr v4, v2

    .line 396
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    move/from16 v6, v25

    .line 401
    .line 402
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 403
    .line 404
    .line 405
    move-result v25

    .line 406
    if-eqz v29, :cond_10

    .line 407
    .line 408
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    const/4 v6, -0x1

    .line 413
    if-eq v5, v6, :cond_10

    .line 414
    .line 415
    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 416
    .line 417
    if-gez v6, :cond_f

    .line 418
    .line 419
    iget v6, v7, Landroidx/appcompat/widget/n2;->mGravity:I

    .line 420
    .line 421
    :cond_f
    and-int/lit8 v6, v6, 0x70

    .line 422
    .line 423
    const/4 v8, 0x4

    .line 424
    shr-int/2addr v6, v8

    .line 425
    and-int/lit8 v6, v6, -0x2

    .line 426
    .line 427
    shr-int/lit8 v6, v6, 0x1

    .line 428
    .line 429
    aget v8, v14, v6

    .line 430
    .line 431
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    aput v8, v14, v6

    .line 436
    .line 437
    aget v8, v15, v6

    .line 438
    .line 439
    sub-int v5, v4, v5

    .line 440
    .line 441
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    aput v5, v15, v6

    .line 446
    .line 447
    :cond_10
    move/from16 v5, v35

    .line 448
    .line 449
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-eqz v26, :cond_11

    .line 454
    .line 455
    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 456
    .line 457
    const/4 v8, -0x1

    .line 458
    if-ne v6, v8, :cond_11

    .line 459
    .line 460
    move/from16 v26, v18

    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_11
    const/16 v26, 0x0

    .line 464
    .line 465
    :goto_9
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 466
    .line 467
    cmpl-float v3, v3, v20

    .line 468
    .line 469
    if-lez v3, :cond_13

    .line 470
    .line 471
    if-eqz v0, :cond_12

    .line 472
    .line 473
    :goto_a
    move/from16 v3, v22

    .line 474
    .line 475
    goto :goto_b

    .line 476
    :cond_12
    move v2, v4

    .line 477
    goto :goto_a

    .line 478
    :goto_b
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 479
    .line 480
    .line 481
    move-result v22

    .line 482
    :goto_c
    move/from16 v0, v33

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_13
    move/from16 v3, v22

    .line 486
    .line 487
    if-eqz v0, :cond_14

    .line 488
    .line 489
    :goto_d
    move/from16 v4, v21

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_14
    move v2, v4

    .line 493
    goto :goto_d

    .line 494
    :goto_e
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 495
    .line 496
    .line 497
    move-result v21

    .line 498
    move/from16 v22, v3

    .line 499
    .line 500
    goto :goto_c

    .line 501
    :goto_f
    invoke-virtual {v7, v9, v0}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    add-int/2addr v2, v0

    .line 506
    move/from16 v0, v32

    .line 507
    .line 508
    :goto_10
    add-int/lit8 v2, v2, 0x1

    .line 509
    .line 510
    move/from16 v8, p2

    .line 511
    .line 512
    move v3, v1

    .line 513
    move v1, v5

    .line 514
    move/from16 v5, v29

    .line 515
    .line 516
    move/from16 v4, v37

    .line 517
    .line 518
    const/4 v6, -0x1

    .line 519
    const/4 v9, 0x0

    .line 520
    goto/16 :goto_1

    .line 521
    .line 522
    :cond_15
    move/from16 v37, v4

    .line 523
    .line 524
    move/from16 v29, v5

    .line 525
    .line 526
    move/from16 v4, v21

    .line 527
    .line 528
    move/from16 v9, v25

    .line 529
    .line 530
    const/high16 v8, -0x80000000

    .line 531
    .line 532
    const/16 v28, -0x2

    .line 533
    .line 534
    move v5, v1

    .line 535
    move v1, v3

    .line 536
    move/from16 v3, v22

    .line 537
    .line 538
    iget v2, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 539
    .line 540
    if-lez v2, :cond_16

    .line 541
    .line 542
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_16

    .line 547
    .line 548
    iget v2, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 549
    .line 550
    iget v1, v7, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    .line 551
    .line 552
    add-int/2addr v2, v1

    .line 553
    iput v2, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 554
    .line 555
    :cond_16
    aget v1, v14, v18

    .line 556
    .line 557
    const/4 v2, -0x1

    .line 558
    if-ne v1, v2, :cond_18

    .line 559
    .line 560
    const/16 v21, 0x0

    .line 561
    .line 562
    aget v6, v14, v21

    .line 563
    .line 564
    if-ne v6, v2, :cond_18

    .line 565
    .line 566
    aget v6, v14, v17

    .line 567
    .line 568
    if-ne v6, v2, :cond_18

    .line 569
    .line 570
    aget v6, v14, v16

    .line 571
    .line 572
    if-eq v6, v2, :cond_17

    .line 573
    .line 574
    goto :goto_11

    .line 575
    :cond_17
    move v1, v5

    .line 576
    move/from16 v25, v9

    .line 577
    .line 578
    goto :goto_12

    .line 579
    :cond_18
    :goto_11
    aget v2, v14, v16

    .line 580
    .line 581
    const/4 v6, 0x0

    .line 582
    aget v8, v14, v6

    .line 583
    .line 584
    aget v6, v14, v17

    .line 585
    .line 586
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    aget v2, v15, v16

    .line 599
    .line 600
    const/4 v6, 0x0

    .line 601
    aget v8, v15, v6

    .line 602
    .line 603
    aget v6, v15, v18

    .line 604
    .line 605
    move/from16 v25, v9

    .line 606
    .line 607
    aget v9, v15, v17

    .line 608
    .line 609
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 614
    .line 615
    .line 616
    move-result v6

    .line 617
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    add-int/2addr v2, v1

    .line 622
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    :goto_12
    if-eqz v37, :cond_1a

    .line 627
    .line 628
    const/high16 v2, -0x80000000

    .line 629
    .line 630
    if-eq v11, v2, :cond_19

    .line 631
    .line 632
    if-nez v11, :cond_1a

    .line 633
    .line 634
    :cond_19
    const/4 v2, 0x0

    .line 635
    goto :goto_13

    .line 636
    :cond_1a
    move/from16 v21, v1

    .line 637
    .line 638
    goto :goto_17

    .line 639
    :goto_13
    iput v2, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 640
    .line 641
    const/4 v2, 0x0

    .line 642
    :goto_14
    if-ge v2, v10, :cond_1a

    .line 643
    .line 644
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    if-nez v5, :cond_1b

    .line 649
    .line 650
    iget v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 651
    .line 652
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 653
    .line 654
    .line 655
    move-result v6

    .line 656
    add-int/2addr v6, v5

    .line 657
    iput v6, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 658
    .line 659
    goto :goto_15

    .line 660
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 661
    .line 662
    .line 663
    move-result v6

    .line 664
    const/16 v8, 0x8

    .line 665
    .line 666
    if-ne v6, v8, :cond_1c

    .line 667
    .line 668
    invoke-virtual {v7, v5, v2}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    add-int/2addr v2, v5

    .line 673
    :goto_15
    move/from16 v21, v1

    .line 674
    .line 675
    goto :goto_16

    .line 676
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    check-cast v6, Landroidx/appcompat/widget/m2;

    .line 681
    .line 682
    iget v8, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 683
    .line 684
    if-eqz v19, :cond_1d

    .line 685
    .line 686
    iget v9, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 687
    .line 688
    add-int/2addr v9, v13

    .line 689
    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 690
    .line 691
    add-int/2addr v9, v6

    .line 692
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    add-int/2addr v5, v9

    .line 697
    add-int/2addr v5, v8

    .line 698
    iput v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 699
    .line 700
    goto :goto_15

    .line 701
    :cond_1d
    add-int v9, v8, v13

    .line 702
    .line 703
    move/from16 v21, v1

    .line 704
    .line 705
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 706
    .line 707
    add-int/2addr v9, v1

    .line 708
    iget v1, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 709
    .line 710
    add-int/2addr v9, v1

    .line 711
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    add-int/2addr v1, v9

    .line 716
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 721
    .line 722
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 723
    .line 724
    move/from16 v1, v21

    .line 725
    .line 726
    goto :goto_14

    .line 727
    :goto_17
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 728
    .line 729
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 730
    .line 731
    .line 732
    move-result v2

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    add-int/2addr v5, v2

    .line 738
    add-int/2addr v5, v1

    .line 739
    iput v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 740
    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    move/from16 v6, p1

    .line 750
    .line 751
    const/4 v2, 0x0

    .line 752
    invoke-static {v1, v6, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    const v2, 0xffffff

    .line 757
    .line 758
    .line 759
    and-int/2addr v2, v1

    .line 760
    iget v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 761
    .line 762
    sub-int/2addr v2, v5

    .line 763
    if-nez v23, :cond_22

    .line 764
    .line 765
    if-eqz v2, :cond_1e

    .line 766
    .line 767
    cmpl-float v8, v0, v20

    .line 768
    .line 769
    if-lez v8, :cond_1e

    .line 770
    .line 771
    goto :goto_1a

    .line 772
    :cond_1e
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    if-eqz v37, :cond_21

    .line 777
    .line 778
    const/high16 v2, 0x40000000    # 2.0f

    .line 779
    .line 780
    if-eq v11, v2, :cond_21

    .line 781
    .line 782
    const/4 v2, 0x0

    .line 783
    :goto_18
    if-ge v2, v10, :cond_21

    .line 784
    .line 785
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    if-eqz v3, :cond_20

    .line 790
    .line 791
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 792
    .line 793
    .line 794
    move-result v4

    .line 795
    const/16 v8, 0x8

    .line 796
    .line 797
    if-ne v4, v8, :cond_1f

    .line 798
    .line 799
    goto :goto_19

    .line 800
    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    check-cast v4, Landroidx/appcompat/widget/m2;

    .line 805
    .line 806
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 807
    .line 808
    cmpl-float v4, v4, v20

    .line 809
    .line 810
    if-lez v4, :cond_20

    .line 811
    .line 812
    const/high16 v4, 0x40000000    # 2.0f

    .line 813
    .line 814
    invoke-static {v13, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 815
    .line 816
    .line 817
    move-result v8

    .line 818
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 819
    .line 820
    .line 821
    move-result v9

    .line 822
    invoke-static {v9, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 823
    .line 824
    .line 825
    move-result v9

    .line 826
    invoke-virtual {v3, v8, v9}, Landroid/view/View;->measure(II)V

    .line 827
    .line 828
    .line 829
    :cond_20
    :goto_19
    add-int/lit8 v2, v2, 0x1

    .line 830
    .line 831
    goto :goto_18

    .line 832
    :cond_21
    move/from16 v2, p2

    .line 833
    .line 834
    move/from16 v30, v1

    .line 835
    .line 836
    move/from16 v23, v10

    .line 837
    .line 838
    move/from16 v1, v21

    .line 839
    .line 840
    move/from16 v9, v25

    .line 841
    .line 842
    const/4 v3, 0x0

    .line 843
    goto/16 :goto_2b

    .line 844
    .line 845
    :cond_22
    :goto_1a
    iget v3, v7, Landroidx/appcompat/widget/n2;->mWeightSum:F

    .line 846
    .line 847
    cmpl-float v8, v3, v20

    .line 848
    .line 849
    if-lez v8, :cond_23

    .line 850
    .line 851
    move v0, v3

    .line 852
    :cond_23
    const/4 v3, -0x1

    .line 853
    aput v3, v14, v16

    .line 854
    .line 855
    aput v3, v14, v17

    .line 856
    .line 857
    aput v3, v14, v18

    .line 858
    .line 859
    const/4 v8, 0x0

    .line 860
    aput v3, v14, v8

    .line 861
    .line 862
    aput v3, v15, v16

    .line 863
    .line 864
    aput v3, v15, v17

    .line 865
    .line 866
    aput v3, v15, v18

    .line 867
    .line 868
    aput v3, v15, v8

    .line 869
    .line 870
    iput v8, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 871
    .line 872
    move v8, v4

    .line 873
    move/from16 v9, v25

    .line 874
    .line 875
    const/4 v13, 0x0

    .line 876
    move v4, v3

    .line 877
    :goto_1b
    if-ge v13, v10, :cond_32

    .line 878
    .line 879
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 880
    .line 881
    .line 882
    move-result-object v3

    .line 883
    if-eqz v3, :cond_24

    .line 884
    .line 885
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 886
    .line 887
    .line 888
    move-result v5

    .line 889
    const/16 v6, 0x8

    .line 890
    .line 891
    if-ne v5, v6, :cond_25

    .line 892
    .line 893
    :cond_24
    move/from16 v30, v1

    .line 894
    .line 895
    move v6, v2

    .line 896
    move/from16 v23, v10

    .line 897
    .line 898
    const/16 v24, 0x4

    .line 899
    .line 900
    move/from16 v2, p2

    .line 901
    .line 902
    goto/16 :goto_27

    .line 903
    .line 904
    :cond_25
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    check-cast v5, Landroidx/appcompat/widget/m2;

    .line 909
    .line 910
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 911
    .line 912
    cmpl-float v23, v6, v20

    .line 913
    .line 914
    if-lez v23, :cond_2a

    .line 915
    .line 916
    move/from16 v23, v10

    .line 917
    .line 918
    int-to-float v10, v2

    .line 919
    mul-float/2addr v10, v6

    .line 920
    div-float/2addr v10, v0

    .line 921
    float-to-int v10, v10

    .line 922
    sub-float/2addr v0, v6

    .line 923
    sub-int/2addr v2, v10

    .line 924
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 925
    .line 926
    .line 927
    move-result v6

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 929
    .line 930
    .line 931
    move-result v25

    .line 932
    add-int v25, v25, v6

    .line 933
    .line 934
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 935
    .line 936
    add-int v25, v25, v6

    .line 937
    .line 938
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 939
    .line 940
    add-int v6, v25, v6

    .line 941
    .line 942
    move/from16 v25, v0

    .line 943
    .line 944
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 945
    .line 946
    move/from16 v30, v1

    .line 947
    .line 948
    move/from16 v31, v2

    .line 949
    .line 950
    const/4 v1, -0x1

    .line 951
    move/from16 v2, p2

    .line 952
    .line 953
    invoke-static {v2, v6, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 958
    .line 959
    if-nez v6, :cond_29

    .line 960
    .line 961
    const/high16 v6, 0x40000000    # 2.0f

    .line 962
    .line 963
    if-eq v11, v6, :cond_26

    .line 964
    .line 965
    goto :goto_1e

    .line 966
    :cond_26
    if-lez v10, :cond_27

    .line 967
    .line 968
    goto :goto_1d

    .line 969
    :cond_27
    :goto_1c
    const/4 v10, 0x0

    .line 970
    :cond_28
    :goto_1d
    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 971
    .line 972
    .line 973
    move-result v10

    .line 974
    invoke-virtual {v3, v10, v0}, Landroid/view/View;->measure(II)V

    .line 975
    .line 976
    .line 977
    goto :goto_1f

    .line 978
    :cond_29
    const/high16 v6, 0x40000000    # 2.0f

    .line 979
    .line 980
    :goto_1e
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 981
    .line 982
    .line 983
    move-result v32

    .line 984
    add-int v10, v32, v10

    .line 985
    .line 986
    if-gez v10, :cond_28

    .line 987
    .line 988
    goto :goto_1c

    .line 989
    :goto_1f
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    const/high16 v6, -0x1000000

    .line 994
    .line 995
    and-int/2addr v0, v6

    .line 996
    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 997
    .line 998
    .line 999
    move-result v9

    .line 1000
    move/from16 v0, v25

    .line 1001
    .line 1002
    goto :goto_20

    .line 1003
    :cond_2a
    move/from16 v30, v1

    .line 1004
    .line 1005
    move v6, v2

    .line 1006
    move/from16 v23, v10

    .line 1007
    .line 1008
    const/4 v1, -0x1

    .line 1009
    move/from16 v2, p2

    .line 1010
    .line 1011
    move/from16 v31, v6

    .line 1012
    .line 1013
    :goto_20
    if-eqz v19, :cond_2b

    .line 1014
    .line 1015
    iget v6, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 1016
    .line 1017
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 1018
    .line 1019
    .line 1020
    move-result v10

    .line 1021
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1022
    .line 1023
    add-int/2addr v10, v1

    .line 1024
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1025
    .line 1026
    add-int/2addr v10, v1

    .line 1027
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    add-int/2addr v1, v10

    .line 1032
    add-int/2addr v1, v6

    .line 1033
    :goto_21
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 1034
    .line 1035
    const/high16 v1, 0x40000000    # 2.0f

    .line 1036
    .line 1037
    goto :goto_22

    .line 1038
    :cond_2b
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 1039
    .line 1040
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 1041
    .line 1042
    .line 1043
    move-result v6

    .line 1044
    add-int/2addr v6, v1

    .line 1045
    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1046
    .line 1047
    add-int/2addr v6, v10

    .line 1048
    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1049
    .line 1050
    add-int/2addr v6, v10

    .line 1051
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 1052
    .line 1053
    .line 1054
    move-result v10

    .line 1055
    add-int/2addr v10, v6

    .line 1056
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 1057
    .line 1058
    .line 1059
    move-result v1

    .line 1060
    goto :goto_21

    .line 1061
    :goto_22
    if-eq v12, v1, :cond_2c

    .line 1062
    .line 1063
    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1064
    .line 1065
    const/4 v6, -0x1

    .line 1066
    if-ne v1, v6, :cond_2c

    .line 1067
    .line 1068
    move/from16 v1, v18

    .line 1069
    .line 1070
    goto :goto_23

    .line 1071
    :cond_2c
    const/4 v1, 0x0

    .line 1072
    :goto_23
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1073
    .line 1074
    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1075
    .line 1076
    add-int/2addr v6, v10

    .line 1077
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 1078
    .line 1079
    .line 1080
    move-result v10

    .line 1081
    add-int/2addr v10, v6

    .line 1082
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    .line 1083
    .line 1084
    .line 1085
    move-result v4

    .line 1086
    if-eqz v1, :cond_2d

    .line 1087
    .line 1088
    goto :goto_24

    .line 1089
    :cond_2d
    move v6, v10

    .line 1090
    :goto_24
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    if-eqz v26, :cond_2e

    .line 1095
    .line 1096
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1097
    .line 1098
    const/4 v8, -0x1

    .line 1099
    if-ne v6, v8, :cond_2f

    .line 1100
    .line 1101
    move/from16 v6, v18

    .line 1102
    .line 1103
    goto :goto_25

    .line 1104
    :cond_2e
    const/4 v8, -0x1

    .line 1105
    :cond_2f
    const/4 v6, 0x0

    .line 1106
    :goto_25
    if-eqz v29, :cond_31

    .line 1107
    .line 1108
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    if-eq v3, v8, :cond_31

    .line 1113
    .line 1114
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1115
    .line 1116
    if-gez v5, :cond_30

    .line 1117
    .line 1118
    iget v5, v7, Landroidx/appcompat/widget/n2;->mGravity:I

    .line 1119
    .line 1120
    :cond_30
    and-int/lit8 v5, v5, 0x70

    .line 1121
    .line 1122
    const/16 v24, 0x4

    .line 1123
    .line 1124
    shr-int/lit8 v5, v5, 0x4

    .line 1125
    .line 1126
    and-int/lit8 v5, v5, -0x2

    .line 1127
    .line 1128
    shr-int/lit8 v5, v5, 0x1

    .line 1129
    .line 1130
    aget v8, v14, v5

    .line 1131
    .line 1132
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    .line 1133
    .line 1134
    .line 1135
    move-result v8

    .line 1136
    aput v8, v14, v5

    .line 1137
    .line 1138
    aget v8, v15, v5

    .line 1139
    .line 1140
    sub-int/2addr v10, v3

    .line 1141
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    aput v3, v15, v5

    .line 1146
    .line 1147
    goto :goto_26

    .line 1148
    :cond_31
    const/16 v24, 0x4

    .line 1149
    .line 1150
    :goto_26
    move v8, v1

    .line 1151
    move/from16 v26, v6

    .line 1152
    .line 1153
    goto :goto_28

    .line 1154
    :goto_27
    move/from16 v31, v6

    .line 1155
    .line 1156
    :goto_28
    add-int/lit8 v13, v13, 0x1

    .line 1157
    .line 1158
    move/from16 v6, p1

    .line 1159
    .line 1160
    move/from16 v10, v23

    .line 1161
    .line 1162
    move/from16 v1, v30

    .line 1163
    .line 1164
    move/from16 v2, v31

    .line 1165
    .line 1166
    const/4 v3, -0x1

    .line 1167
    goto/16 :goto_1b

    .line 1168
    .line 1169
    :cond_32
    move/from16 v2, p2

    .line 1170
    .line 1171
    move/from16 v30, v1

    .line 1172
    .line 1173
    move/from16 v23, v10

    .line 1174
    .line 1175
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 1176
    .line 1177
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 1182
    .line 1183
    .line 1184
    move-result v3

    .line 1185
    add-int/2addr v3, v1

    .line 1186
    add-int/2addr v3, v0

    .line 1187
    iput v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 1188
    .line 1189
    aget v0, v14, v18

    .line 1190
    .line 1191
    const/4 v1, -0x1

    .line 1192
    if-ne v0, v1, :cond_34

    .line 1193
    .line 1194
    const/4 v3, 0x0

    .line 1195
    aget v5, v14, v3

    .line 1196
    .line 1197
    if-ne v5, v1, :cond_34

    .line 1198
    .line 1199
    aget v3, v14, v17

    .line 1200
    .line 1201
    if-ne v3, v1, :cond_34

    .line 1202
    .line 1203
    aget v3, v14, v16

    .line 1204
    .line 1205
    if-eq v3, v1, :cond_33

    .line 1206
    .line 1207
    goto :goto_29

    .line 1208
    :cond_33
    move v1, v4

    .line 1209
    const/4 v3, 0x0

    .line 1210
    goto :goto_2a

    .line 1211
    :cond_34
    :goto_29
    aget v1, v14, v16

    .line 1212
    .line 1213
    const/4 v3, 0x0

    .line 1214
    aget v5, v14, v3

    .line 1215
    .line 1216
    aget v6, v14, v17

    .line 1217
    .line 1218
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 1219
    .line 1220
    .line 1221
    move-result v0

    .line 1222
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 1223
    .line 1224
    .line 1225
    move-result v0

    .line 1226
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 1227
    .line 1228
    .line 1229
    move-result v0

    .line 1230
    aget v1, v15, v16

    .line 1231
    .line 1232
    aget v5, v15, v3

    .line 1233
    .line 1234
    aget v6, v15, v18

    .line 1235
    .line 1236
    aget v10, v15, v17

    .line 1237
    .line 1238
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 1239
    .line 1240
    .line 1241
    move-result v6

    .line 1242
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 1243
    .line 1244
    .line 1245
    move-result v5

    .line 1246
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 1247
    .line 1248
    .line 1249
    move-result v1

    .line 1250
    add-int/2addr v1, v0

    .line 1251
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 1252
    .line 1253
    .line 1254
    move-result v0

    .line 1255
    move v1, v0

    .line 1256
    :goto_2a
    move v0, v8

    .line 1257
    :goto_2b
    if-nez v26, :cond_35

    .line 1258
    .line 1259
    const/high16 v4, 0x40000000    # 2.0f

    .line 1260
    .line 1261
    if-eq v12, v4, :cond_35

    .line 1262
    .line 1263
    goto :goto_2c

    .line 1264
    :cond_35
    move v0, v1

    .line 1265
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 1266
    .line 1267
    .line 1268
    move-result v1

    .line 1269
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 1270
    .line 1271
    .line 1272
    move-result v4

    .line 1273
    add-int/2addr v4, v1

    .line 1274
    add-int/2addr v4, v0

    .line 1275
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 1276
    .line 1277
    .line 1278
    move-result v0

    .line 1279
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 1280
    .line 1281
    .line 1282
    move-result v0

    .line 1283
    const/high16 v1, -0x1000000

    .line 1284
    .line 1285
    and-int/2addr v1, v9

    .line 1286
    or-int v1, v30, v1

    .line 1287
    .line 1288
    shl-int/lit8 v4, v9, 0x10

    .line 1289
    .line 1290
    invoke-static {v0, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1291
    .line 1292
    .line 1293
    move-result v0

    .line 1294
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1295
    .line 1296
    .line 1297
    if-eqz v27, :cond_38

    .line 1298
    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 1300
    .line 1301
    .line 1302
    move-result v0

    .line 1303
    const/high16 v1, 0x40000000    # 2.0f

    .line 1304
    .line 1305
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1306
    .line 1307
    .line 1308
    move-result v6

    .line 1309
    move v9, v3

    .line 1310
    move/from16 v8, v23

    .line 1311
    .line 1312
    :goto_2d
    if-ge v9, v8, :cond_38

    .line 1313
    .line 1314
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 1319
    .line 1320
    .line 1321
    move-result v0

    .line 1322
    const/16 v10, 0x8

    .line 1323
    .line 1324
    if-eq v0, v10, :cond_37

    .line 1325
    .line 1326
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    move-object v11, v0

    .line 1331
    check-cast v11, Landroidx/appcompat/widget/m2;

    .line 1332
    .line 1333
    iget v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1334
    .line 1335
    const/4 v2, -0x1

    .line 1336
    if-ne v0, v2, :cond_36

    .line 1337
    .line 1338
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1339
    .line 1340
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1345
    .line 1346
    const/4 v3, 0x0

    .line 1347
    const/4 v5, 0x0

    .line 1348
    move-object/from16 v0, p0

    .line 1349
    .line 1350
    move v13, v2

    .line 1351
    move/from16 v2, p1

    .line 1352
    .line 1353
    move v4, v6

    .line 1354
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1355
    .line 1356
    .line 1357
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1358
    .line 1359
    goto :goto_2e

    .line 1360
    :cond_36
    move v13, v2

    .line 1361
    goto :goto_2e

    .line 1362
    :cond_37
    const/4 v13, -0x1

    .line 1363
    :goto_2e
    add-int/lit8 v9, v9, 0x1

    .line 1364
    .line 1365
    goto :goto_2d

    .line 1366
    :cond_38
    return-void
.end method

.method public measureNullChild(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public measureVertical(II)V
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    iput v9, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/n2;->getVirtualChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v10

    .line 12
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v11

    .line 16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result v12

    .line 20
    iget v13, v7, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    .line 21
    .line 22
    iget-boolean v14, v7, Landroidx/appcompat/widget/n2;->mUseLargestChild:Z

    .line 23
    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    move v1, v9

    .line 27
    move v2, v1

    .line 28
    move v3, v2

    .line 29
    move v4, v3

    .line 30
    move v5, v4

    .line 31
    move v6, v5

    .line 32
    move/from16 v17, v6

    .line 33
    .line 34
    move/from16 v19, v17

    .line 35
    .line 36
    move/from16 v0, v16

    .line 37
    .line 38
    const/16 v18, 0x1

    .line 39
    .line 40
    :goto_0
    move/from16 v20, v5

    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    if-ge v6, v10, :cond_10

    .line 45
    .line 46
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    if-nez v9, :cond_0

    .line 51
    .line 52
    iget v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    add-int/2addr v9, v5

    .line 59
    iput v9, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 60
    .line 61
    :goto_1
    move/from16 v22, v12

    .line 62
    .line 63
    move/from16 v5, v20

    .line 64
    .line 65
    const/4 v8, 0x1

    .line 66
    move/from16 v20, v10

    .line 67
    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    if-ne v15, v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v7, v9, v6}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    add-int/2addr v6, v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    iget v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 89
    .line 90
    iget v15, v7, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    .line 91
    .line 92
    add-int/2addr v5, v15

    .line 93
    iput v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 94
    .line 95
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v15, v5

    .line 100
    check-cast v15, Landroidx/appcompat/widget/m2;

    .line 101
    .line 102
    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 103
    .line 104
    add-float v21, v0, v5

    .line 105
    .line 106
    const/high16 v0, 0x40000000    # 2.0f

    .line 107
    .line 108
    if-ne v12, v0, :cond_3

    .line 109
    .line 110
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    cmpl-float v0, v5, v16

    .line 115
    .line 116
    if-lez v0, :cond_3

    .line 117
    .line 118
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 119
    .line 120
    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 121
    .line 122
    add-int/2addr v5, v0

    .line 123
    move/from16 v22, v1

    .line 124
    .line 125
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 126
    .line 127
    add-int/2addr v5, v1

    .line 128
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 133
    .line 134
    move/from16 v26, v2

    .line 135
    .line 136
    move/from16 v27, v20

    .line 137
    .line 138
    move/from16 v25, v22

    .line 139
    .line 140
    const/16 v17, 0x1

    .line 141
    .line 142
    move/from16 v20, v10

    .line 143
    .line 144
    move/from16 v22, v12

    .line 145
    .line 146
    move v12, v4

    .line 147
    move v10, v6

    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_3
    move/from16 v22, v1

    .line 151
    .line 152
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 153
    .line 154
    if-nez v0, :cond_4

    .line 155
    .line 156
    cmpl-float v0, v5, v16

    .line 157
    .line 158
    if-lez v0, :cond_4

    .line 159
    .line 160
    const/4 v0, -0x2

    .line 161
    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 162
    .line 163
    const/4 v5, 0x0

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/high16 v5, -0x80000000

    .line 166
    .line 167
    :goto_2
    const/16 v23, 0x0

    .line 168
    .line 169
    cmpl-float v0, v21, v16

    .line 170
    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 174
    .line 175
    move/from16 v24, v0

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    const/16 v24, 0x0

    .line 179
    .line 180
    :goto_3
    move-object/from16 v0, p0

    .line 181
    .line 182
    move/from16 v25, v22

    .line 183
    .line 184
    move-object v1, v9

    .line 185
    move/from16 v26, v2

    .line 186
    .line 187
    move v2, v6

    .line 188
    move v8, v3

    .line 189
    move/from16 v3, p1

    .line 190
    .line 191
    move/from16 v22, v12

    .line 192
    .line 193
    move v12, v4

    .line 194
    move/from16 v4, v23

    .line 195
    .line 196
    move/from16 v28, v5

    .line 197
    .line 198
    move/from16 v27, v20

    .line 199
    .line 200
    move/from16 v5, p2

    .line 201
    .line 202
    move/from16 v20, v10

    .line 203
    .line 204
    move v10, v6

    .line 205
    move/from16 v6, v24

    .line 206
    .line 207
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/n2;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 208
    .line 209
    .line 210
    move/from16 v1, v28

    .line 211
    .line 212
    const/high16 v0, -0x80000000

    .line 213
    .line 214
    if-eq v1, v0, :cond_6

    .line 215
    .line 216
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 217
    .line 218
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 223
    .line 224
    add-int v2, v1, v0

    .line 225
    .line 226
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    .line 228
    add-int/2addr v2, v3

    .line 229
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 230
    .line 231
    add-int/2addr v2, v3

    .line 232
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    add-int/2addr v3, v2

    .line 237
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 242
    .line 243
    if-eqz v14, :cond_7

    .line 244
    .line 245
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    goto :goto_4

    .line 250
    :cond_7
    move v3, v8

    .line 251
    :goto_4
    if-ltz v13, :cond_8

    .line 252
    .line 253
    add-int/lit8 v6, v10, 0x1

    .line 254
    .line 255
    if-ne v13, v6, :cond_8

    .line 256
    .line 257
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 258
    .line 259
    iput v0, v7, Landroidx/appcompat/widget/n2;->mBaselineChildTop:I

    .line 260
    .line 261
    :cond_8
    if-ge v10, v13, :cond_9

    .line 262
    .line 263
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 264
    .line 265
    cmpl-float v0, v0, v16

    .line 266
    .line 267
    if-gtz v0, :cond_a

    .line 268
    .line 269
    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 273
    .line 274
    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .line 275
    .line 276
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :goto_5
    if-eq v11, v0, :cond_b

    .line 281
    .line 282
    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 283
    .line 284
    const/4 v1, -0x1

    .line 285
    if-ne v0, v1, :cond_b

    .line 286
    .line 287
    const/4 v0, 0x1

    .line 288
    const/16 v19, 0x1

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_b
    const/4 v0, 0x0

    .line 292
    :goto_6
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 293
    .line 294
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 295
    .line 296
    add-int/2addr v1, v2

    .line 297
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    add-int/2addr v2, v1

    .line 302
    move/from16 v4, v26

    .line 303
    .line 304
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    move/from16 v6, v25

    .line 313
    .line 314
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v18, :cond_c

    .line 319
    .line 320
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 321
    .line 322
    const/4 v8, -0x1

    .line 323
    if-ne v6, v8, :cond_c

    .line 324
    .line 325
    const/16 v18, 0x1

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_c
    const/16 v18, 0x0

    .line 329
    .line 330
    :goto_7
    iget v6, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 331
    .line 332
    cmpl-float v6, v6, v16

    .line 333
    .line 334
    if-lez v6, :cond_e

    .line 335
    .line 336
    if-eqz v0, :cond_d

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_d
    move v1, v2

    .line 340
    :goto_8
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    goto :goto_b

    .line 345
    :cond_e
    if-eqz v0, :cond_f

    .line 346
    .line 347
    :goto_9
    move/from16 v2, v27

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_f
    move v1, v2

    .line 351
    goto :goto_9

    .line 352
    :goto_a
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    move/from16 v27, v0

    .line 357
    .line 358
    move v0, v12

    .line 359
    :goto_b
    invoke-virtual {v7, v9, v10}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    add-int v6, v1, v10

    .line 364
    .line 365
    move v2, v4

    .line 366
    move v1, v5

    .line 367
    move/from16 v5, v27

    .line 368
    .line 369
    const/4 v8, 0x1

    .line 370
    move v4, v0

    .line 371
    move/from16 v0, v21

    .line 372
    .line 373
    :goto_c
    add-int/2addr v6, v8

    .line 374
    move/from16 v8, p1

    .line 375
    .line 376
    move/from16 v10, v20

    .line 377
    .line 378
    move/from16 v12, v22

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_10
    move v6, v1

    .line 383
    move v8, v3

    .line 384
    move/from16 v22, v12

    .line 385
    .line 386
    move v12, v4

    .line 387
    move v4, v2

    .line 388
    move/from16 v2, v20

    .line 389
    .line 390
    move/from16 v20, v10

    .line 391
    .line 392
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 393
    .line 394
    move/from16 v9, v20

    .line 395
    .line 396
    if-lez v1, :cond_11

    .line 397
    .line 398
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/n2;->hasDividerBeforeChildAt(I)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_11

    .line 403
    .line 404
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 405
    .line 406
    iget v3, v7, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    .line 407
    .line 408
    add-int/2addr v1, v3

    .line 409
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 410
    .line 411
    :cond_11
    move/from16 v1, v22

    .line 412
    .line 413
    if-eqz v14, :cond_13

    .line 414
    .line 415
    const/high16 v3, -0x80000000

    .line 416
    .line 417
    if-eq v1, v3, :cond_12

    .line 418
    .line 419
    if-nez v1, :cond_13

    .line 420
    .line 421
    :cond_12
    const/4 v3, 0x0

    .line 422
    goto :goto_d

    .line 423
    :cond_13
    const/4 v5, 0x1

    .line 424
    goto :goto_11

    .line 425
    :goto_d
    iput v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 426
    .line 427
    const/4 v3, 0x0

    .line 428
    :goto_e
    if-ge v3, v9, :cond_13

    .line 429
    .line 430
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    if-nez v10, :cond_14

    .line 435
    .line 436
    iget v10, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 437
    .line 438
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/n2;->measureNullChild(I)I

    .line 439
    .line 440
    .line 441
    move-result v13

    .line 442
    add-int/2addr v13, v10

    .line 443
    iput v13, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 444
    .line 445
    goto :goto_f

    .line 446
    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    if-ne v13, v5, :cond_15

    .line 451
    .line 452
    invoke-virtual {v7, v10, v3}, Landroidx/appcompat/widget/n2;->getChildrenSkipCount(Landroid/view/View;I)I

    .line 453
    .line 454
    .line 455
    move-result v10

    .line 456
    add-int/2addr v3, v10

    .line 457
    :goto_f
    const/4 v5, 0x1

    .line 458
    goto :goto_10

    .line 459
    :cond_15
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 460
    .line 461
    .line 462
    move-result-object v13

    .line 463
    check-cast v13, Landroidx/appcompat/widget/m2;

    .line 464
    .line 465
    iget v15, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 466
    .line 467
    add-int v20, v15, v8

    .line 468
    .line 469
    iget v5, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 470
    .line 471
    add-int v20, v20, v5

    .line 472
    .line 473
    iget v5, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 474
    .line 475
    add-int v20, v20, v5

    .line 476
    .line 477
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    add-int v5, v5, v20

    .line 482
    .line 483
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    iput v5, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 488
    .line 489
    goto :goto_f

    .line 490
    :goto_10
    add-int/2addr v3, v5

    .line 491
    const/16 v5, 0x8

    .line 492
    .line 493
    goto :goto_e

    .line 494
    :goto_11
    iget v3, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 495
    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 497
    .line 498
    .line 499
    move-result v10

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 501
    .line 502
    .line 503
    move-result v13

    .line 504
    add-int/2addr v13, v10

    .line 505
    add-int/2addr v13, v3

    .line 506
    iput v13, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 507
    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    move/from16 v10, p2

    .line 517
    .line 518
    const/4 v13, 0x0

    .line 519
    invoke-static {v3, v10, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    const v13, 0xffffff

    .line 524
    .line 525
    .line 526
    and-int/2addr v13, v3

    .line 527
    iget v15, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 528
    .line 529
    sub-int/2addr v13, v15

    .line 530
    if-nez v17, :cond_1a

    .line 531
    .line 532
    if-eqz v13, :cond_16

    .line 533
    .line 534
    cmpl-float v15, v0, v16

    .line 535
    .line 536
    if-lez v15, :cond_16

    .line 537
    .line 538
    goto :goto_14

    .line 539
    :cond_16
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v14, :cond_19

    .line 544
    .line 545
    const/high16 v2, 0x40000000    # 2.0f

    .line 546
    .line 547
    if-eq v1, v2, :cond_19

    .line 548
    .line 549
    const/4 v1, 0x0

    .line 550
    :goto_12
    if-ge v1, v9, :cond_19

    .line 551
    .line 552
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    if-eqz v2, :cond_18

    .line 557
    .line 558
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    const/16 v12, 0x8

    .line 563
    .line 564
    if-ne v5, v12, :cond_17

    .line 565
    .line 566
    goto :goto_13

    .line 567
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 568
    .line 569
    .line 570
    move-result-object v5

    .line 571
    check-cast v5, Landroidx/appcompat/widget/m2;

    .line 572
    .line 573
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 574
    .line 575
    cmpl-float v5, v5, v16

    .line 576
    .line 577
    if-lez v5, :cond_18

    .line 578
    .line 579
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    const/high16 v12, 0x40000000    # 2.0f

    .line 584
    .line 585
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 590
    .line 591
    .line 592
    move-result v13

    .line 593
    invoke-virtual {v2, v5, v13}, Landroid/view/View;->measure(II)V

    .line 594
    .line 595
    .line 596
    :cond_18
    :goto_13
    add-int/lit8 v1, v1, 0x1

    .line 597
    .line 598
    goto :goto_12

    .line 599
    :cond_19
    move/from16 v10, p1

    .line 600
    .line 601
    move v2, v4

    .line 602
    move v1, v6

    .line 603
    goto/16 :goto_1e

    .line 604
    .line 605
    :cond_1a
    :goto_14
    iget v8, v7, Landroidx/appcompat/widget/n2;->mWeightSum:F

    .line 606
    .line 607
    cmpl-float v12, v8, v16

    .line 608
    .line 609
    if-lez v12, :cond_1b

    .line 610
    .line 611
    move v0, v8

    .line 612
    :cond_1b
    const/4 v8, 0x0

    .line 613
    iput v8, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 614
    .line 615
    move v12, v2

    .line 616
    move v2, v4

    .line 617
    move v4, v8

    .line 618
    :goto_15
    if-ge v4, v9, :cond_25

    .line 619
    .line 620
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 621
    .line 622
    .line 623
    move-result-object v14

    .line 624
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 625
    .line 626
    .line 627
    move-result v15

    .line 628
    const/16 v5, 0x8

    .line 629
    .line 630
    if-ne v15, v5, :cond_1c

    .line 631
    .line 632
    move/from16 v10, p1

    .line 633
    .line 634
    move/from16 v22, v1

    .line 635
    .line 636
    goto/16 :goto_1d

    .line 637
    .line 638
    :cond_1c
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    check-cast v5, Landroidx/appcompat/widget/m2;

    .line 643
    .line 644
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 645
    .line 646
    cmpl-float v17, v15, v16

    .line 647
    .line 648
    if-lez v17, :cond_21

    .line 649
    .line 650
    int-to-float v8, v13

    .line 651
    mul-float/2addr v8, v15

    .line 652
    div-float/2addr v8, v0

    .line 653
    float-to-int v8, v8

    .line 654
    sub-float/2addr v0, v15

    .line 655
    sub-int/2addr v13, v8

    .line 656
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 657
    .line 658
    .line 659
    move-result v15

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 661
    .line 662
    .line 663
    move-result v17

    .line 664
    add-int v17, v17, v15

    .line 665
    .line 666
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 667
    .line 668
    add-int v17, v17, v15

    .line 669
    .line 670
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 671
    .line 672
    add-int v15, v17, v15

    .line 673
    .line 674
    move/from16 v17, v0

    .line 675
    .line 676
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 677
    .line 678
    move/from16 v10, p1

    .line 679
    .line 680
    invoke-static {v10, v15, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 685
    .line 686
    if-nez v15, :cond_20

    .line 687
    .line 688
    const/high16 v15, 0x40000000    # 2.0f

    .line 689
    .line 690
    if-eq v1, v15, :cond_1d

    .line 691
    .line 692
    goto :goto_18

    .line 693
    :cond_1d
    if-lez v8, :cond_1e

    .line 694
    .line 695
    goto :goto_17

    .line 696
    :cond_1e
    :goto_16
    const/4 v8, 0x0

    .line 697
    :cond_1f
    :goto_17
    invoke-static {v8, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 698
    .line 699
    .line 700
    move-result v8

    .line 701
    invoke-virtual {v14, v0, v8}, Landroid/view/View;->measure(II)V

    .line 702
    .line 703
    .line 704
    goto :goto_19

    .line 705
    :cond_20
    const/high16 v15, 0x40000000    # 2.0f

    .line 706
    .line 707
    :goto_18
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 708
    .line 709
    .line 710
    move-result v20

    .line 711
    add-int v8, v20, v8

    .line 712
    .line 713
    if-gez v8, :cond_1f

    .line 714
    .line 715
    goto :goto_16

    .line 716
    :goto_19
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    and-int/lit16 v0, v0, -0x100

    .line 721
    .line 722
    invoke-static {v6, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 723
    .line 724
    .line 725
    move-result v6

    .line 726
    move/from16 v0, v17

    .line 727
    .line 728
    goto :goto_1a

    .line 729
    :cond_21
    move/from16 v10, p1

    .line 730
    .line 731
    :goto_1a
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 732
    .line 733
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 734
    .line 735
    add-int/2addr v8, v15

    .line 736
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 737
    .line 738
    .line 739
    move-result v15

    .line 740
    add-int/2addr v15, v8

    .line 741
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    move/from16 v17, v0

    .line 746
    .line 747
    const/high16 v0, 0x40000000    # 2.0f

    .line 748
    .line 749
    if-eq v11, v0, :cond_22

    .line 750
    .line 751
    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 752
    .line 753
    move/from16 v22, v1

    .line 754
    .line 755
    const/4 v1, -0x1

    .line 756
    if-ne v0, v1, :cond_23

    .line 757
    .line 758
    goto :goto_1b

    .line 759
    :cond_22
    move/from16 v22, v1

    .line 760
    .line 761
    const/4 v1, -0x1

    .line 762
    :cond_23
    move v8, v15

    .line 763
    :goto_1b
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v18, :cond_24

    .line 768
    .line 769
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 770
    .line 771
    if-ne v8, v1, :cond_24

    .line 772
    .line 773
    const/4 v8, 0x1

    .line 774
    goto :goto_1c

    .line 775
    :cond_24
    const/4 v8, 0x0

    .line 776
    :goto_1c
    iget v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 777
    .line 778
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 779
    .line 780
    .line 781
    move-result v12

    .line 782
    add-int/2addr v12, v1

    .line 783
    iget v15, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 784
    .line 785
    add-int/2addr v12, v15

    .line 786
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 787
    .line 788
    add-int/2addr v12, v5

    .line 789
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/n2;->getNextLocationOffset(Landroid/view/View;)I

    .line 790
    .line 791
    .line 792
    move-result v5

    .line 793
    add-int/2addr v5, v12

    .line 794
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    iput v1, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 799
    .line 800
    move v12, v0

    .line 801
    move/from16 v18, v8

    .line 802
    .line 803
    move/from16 v0, v17

    .line 804
    .line 805
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    .line 806
    .line 807
    move/from16 v10, p2

    .line 808
    .line 809
    move/from16 v1, v22

    .line 810
    .line 811
    const/4 v5, 0x1

    .line 812
    const/4 v8, 0x0

    .line 813
    goto/16 :goto_15

    .line 814
    .line 815
    :cond_25
    move/from16 v10, p1

    .line 816
    .line 817
    iget v0, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 818
    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 824
    .line 825
    .line 826
    move-result v4

    .line 827
    add-int/2addr v4, v1

    .line 828
    add-int/2addr v4, v0

    .line 829
    iput v4, v7, Landroidx/appcompat/widget/n2;->mTotalLength:I

    .line 830
    .line 831
    move v1, v6

    .line 832
    move v0, v12

    .line 833
    :goto_1e
    if-nez v18, :cond_26

    .line 834
    .line 835
    const/high16 v4, 0x40000000    # 2.0f

    .line 836
    .line 837
    if-eq v11, v4, :cond_26

    .line 838
    .line 839
    goto :goto_1f

    .line 840
    :cond_26
    move v0, v2

    .line 841
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 842
    .line 843
    .line 844
    move-result v2

    .line 845
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 846
    .line 847
    .line 848
    move-result v4

    .line 849
    add-int/2addr v4, v2

    .line 850
    add-int/2addr v4, v0

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    invoke-static {v0, v10, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    invoke-virtual {v7, v0, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 864
    .line 865
    .line 866
    if-eqz v19, :cond_29

    .line 867
    .line 868
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    const/high16 v1, 0x40000000    # 2.0f

    .line 873
    .line 874
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 875
    .line 876
    .line 877
    move-result v6

    .line 878
    const/4 v8, 0x0

    .line 879
    :goto_20
    if-ge v8, v9, :cond_29

    .line 880
    .line 881
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/n2;->getVirtualChildAt(I)Landroid/view/View;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    const/16 v5, 0x8

    .line 890
    .line 891
    if-eq v0, v5, :cond_28

    .line 892
    .line 893
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    move-object v10, v0

    .line 898
    check-cast v10, Landroidx/appcompat/widget/m2;

    .line 899
    .line 900
    iget v0, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 901
    .line 902
    const/4 v11, -0x1

    .line 903
    if-ne v0, v11, :cond_27

    .line 904
    .line 905
    iget v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 906
    .line 907
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 912
    .line 913
    const/4 v3, 0x0

    .line 914
    const/4 v13, 0x0

    .line 915
    move-object/from16 v0, p0

    .line 916
    .line 917
    move v2, v6

    .line 918
    move/from16 v4, p2

    .line 919
    .line 920
    move v14, v5

    .line 921
    move v5, v13

    .line 922
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 923
    .line 924
    .line 925
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 926
    .line 927
    goto :goto_21

    .line 928
    :cond_27
    move v14, v5

    .line 929
    goto :goto_21

    .line 930
    :cond_28
    move v14, v5

    .line 931
    const/4 v11, -0x1

    .line 932
    :goto_21
    add-int/lit8 v8, v8, 0x1

    .line 933
    .line 934
    goto :goto_20

    .line 935
    :cond_29
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n2;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/n2;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    iget p1, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/n2;->layoutVertical(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/n2;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n2;->measureVertical(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/n2;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/n2;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/n2;->mBaselineAlignedChildIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/n2;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/n2;->mDividerWidth:I

    iput v0, p0, Landroidx/appcompat/widget/n2;->mDividerHeight:I

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/n2;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2

    const v0, 0x800007

    and-int/2addr p1, v0

    iget v1, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_0

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/n2;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/n2;->mOrientation:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/n2;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2

    and-int/lit8 p1, p1, 0x70

    iget v0, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_0

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/n2;->mGravity:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/n2;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
