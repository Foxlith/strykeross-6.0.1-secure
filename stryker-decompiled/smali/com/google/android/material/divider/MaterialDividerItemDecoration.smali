.class public Lcom/google/android/material/divider/MaterialDividerItemDecoration;
.super Landroidx/recyclerview/widget/s0;
.source "SourceFile"


# static fields
.field private static final DEF_STYLE_RES:I

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private color:I

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private insetEnd:I

.field private insetStart:I

.field private lastItemDecorated:Z

.field private orientation:I

.field private final tempRect:Landroid/graphics/Rect;

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    sput v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    sget v5, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    iput p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_lastItemDecorated:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    invoke-virtual {p0, p4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setOrientation(I)V

    return-void
.end method

.method private drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5, v0, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v2, v3

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sub-int/2addr v4, v5

    .line 37
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    move v0, v1

    .line 46
    :goto_0
    sget-object v3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-static {p2}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x1

    .line 53
    if-ne v3, v4, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v4, v1

    .line 57
    :goto_1
    if-eqz v4, :cond_2

    .line 58
    .line 59
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    .line 63
    .line 64
    :goto_2
    add-int/2addr v0, v3

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    .line 71
    .line 72
    :goto_3
    sub-int/2addr v2, v3

    .line 73
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_4
    if-ge v1, v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    .line 89
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    .line 94
    .line 95
    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/w0;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 96
    .line 97
    .line 98
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    .line 99
    .line 100
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    add-int/2addr v4, v5

    .line 111
    iget v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    .line 112
    .line 113
    sub-int v5, v4, v5

    .line 114
    .line 115
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-virtual {v6, v0, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    .line 119
    .line 120
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .locals 4

    .line 2
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(ILandroidx/recyclerview/widget/k0;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    return v0
.end method

.method public getDividerThickness()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 0

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p3, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    return v0
.end method

.method public isLastItemDecorated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/l1;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/w0;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-static {v0, p1}, La0/b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDividerColorResource(Landroid/content/Context;I)V
    .locals 1

    .line 1
    sget-object v0, Lx/g;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    return-void
.end method

.method public setDividerInsetEndResource(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetEnd(I)V

    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    return-void
.end method

.method public setDividerInsetStartResource(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetStart(I)V

    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    return-void
.end method

.method public setDividerThicknessResource(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    return-void
.end method

.method public setLastItemDecorated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "Invalid orientation: "

    .line 10
    .line 11
    const-string v2, ". It should be either HORIZONTAL or VERTICAL"

    .line 12
    .line 13
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    .line 22
    .line 23
    return-void
.end method

.method public shouldDrawDivider(ILandroidx/recyclerview/widget/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/k0;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    return p1
.end method
