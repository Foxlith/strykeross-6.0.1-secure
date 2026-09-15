.class public Lcom/google/android/material/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private rowCount:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getMeasuredDimension(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/R$styleable;->FlowLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    sget p2, Lcom/google/android/material/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    return v0
.end method

.method public getRowIndex(Landroid/view/View;)I
    .locals 1

    sget v0, Lcom/google/android/material/R$id;->row_index_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 13
    .line 14
    sget-object p5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-ne p5, p1, :cond_1

    .line 21
    .line 22
    move p5, p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p5, p3

    .line 25
    :goto_0
    if-eqz p5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_1
    if-eqz p5, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    sub-int/2addr p4, p2

    .line 52
    sub-int/2addr p4, v1

    .line 53
    move v1, p3

    .line 54
    move v3, v0

    .line 55
    move p2, v2

    .line 56
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v1, v4, :cond_8

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/16 v6, 0x8

    .line 71
    .line 72
    if-ne v5, v6, :cond_4

    .line 73
    .line 74
    sget v5, Lcom/google/android/material/R$id;->row_index_key:I

    .line 75
    .line 76
    const/4 v6, -0x1

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .line 91
    if-eqz v6, :cond_5

    .line 92
    .line 93
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .line 95
    invoke-static {v5}, Landroidx/core/view/o;->c(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-static {v5}, Landroidx/core/view/o;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move v5, p3

    .line 105
    move v6, v5

    .line 106
    :goto_4
    add-int v7, v3, v6

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    add-int/2addr v8, v7

    .line 113
    iget-boolean v7, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    .line 114
    .line 115
    if-nez v7, :cond_6

    .line 116
    .line 117
    if-le v8, p4, :cond_6

    .line 118
    .line 119
    iget p2, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    .line 120
    .line 121
    add-int/2addr p2, v2

    .line 122
    iget v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 123
    .line 124
    add-int/2addr v2, p1

    .line 125
    iput v2, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 126
    .line 127
    move v3, v0

    .line 128
    :cond_6
    sget v2, Lcom/google/android/material/R$id;->row_index_key:I

    .line 129
    .line 130
    iget v7, p0, Lcom/google/android/material/internal/FlowLayout;->rowCount:I

    .line 131
    .line 132
    sub-int/2addr v7, p1

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v4, v2, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    add-int v2, v3, v6

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    add-int/2addr v7, v2

    .line 147
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    add-int/2addr v8, p2

    .line 152
    if-eqz p5, :cond_7

    .line 153
    .line 154
    sub-int v2, p4, v7

    .line 155
    .line 156
    sub-int v7, p4, v3

    .line 157
    .line 158
    sub-int/2addr v7, v6

    .line 159
    :cond_7
    invoke-virtual {v4, v2, p2, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 160
    .line 161
    .line 162
    add-int/2addr v6, v5

    .line 163
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    add-int/2addr v2, v6

    .line 168
    iget v4, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    .line 169
    .line 170
    add-int/2addr v2, v4

    .line 171
    add-int/2addr v3, v2

    .line 172
    move v2, v8

    .line 173
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2

    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_5

    :cond_2
    move/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int v16, v6, v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v18, v6

    add-int v6, v17, v16

    if-le v6, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlowLayout;->isSingleLine()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget v9, v0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v9, v7

    goto :goto_4

    :cond_4
    move/from16 v6, v18

    :goto_4
    add-int v7, v6, v8

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v7, v16, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v9

    if-le v7, v11, :cond_5

    move v11, v7

    :cond_5
    add-int/2addr v8, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v8

    iget v8, v0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v10, v6, :cond_6

    add-int/2addr v11, v15

    :cond_6
    move v6, v7

    move/from16 v7, v16

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v1, v2, v5}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v1

    invoke-static {v3, v4, v6}, Lcom/google/android/material/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->itemSpacing:I

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/internal/FlowLayout;->lineSpacing:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/FlowLayout;->singleLine:Z

    return-void
.end method
