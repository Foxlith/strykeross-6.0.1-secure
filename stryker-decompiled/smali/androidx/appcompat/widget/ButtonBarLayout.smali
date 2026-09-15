.class public Landroidx/appcompat/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    sget-object v3, Le/a;->k:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroidx/core/view/c1;->n(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_0
    return-void
.end method

.method private setStacked(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    if-eq v0, p1, :cond_4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_4

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p1, :cond_1

    const v0, 0x800005

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f0a05c4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_2
    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 11
    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->c:I

    .line 22
    .line 23
    :cond_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    .line 34
    if-ne v1, v4, :cond_2

    .line 35
    .line 36
    const/high16 v1, -0x80000000

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    move v1, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, p1

    .line 45
    move v1, v2

    .line 46
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/high16 v4, -0x1000000

    .line 62
    .line 63
    and-int/2addr v0, v4

    .line 64
    const/high16 v4, 0x1000000

    .line 65
    .line 66
    if-ne v0, v4, :cond_3

    .line 67
    .line 68
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-eqz v1, :cond_4

    .line 73
    .line 74
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    move v1, v2

    .line 82
    :goto_2
    const/4 v4, -0x1

    .line 83
    if-ge v1, v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_5

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move v1, v4

    .line 100
    :goto_3
    if-ltz v1, :cond_b

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/2addr v0, v5

    .line 121
    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 122
    .line 123
    add-int/2addr v0, v5

    .line 124
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 125
    .line 126
    add-int/2addr v0, v2

    .line 127
    iget-boolean v2, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 128
    .line 129
    if-eqz v2, :cond_a

    .line 130
    .line 131
    add-int/2addr v1, v3

    .line 132
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    :goto_4
    if-ge v1, v2, :cond_8

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_7

    .line 147
    .line 148
    move v4, v1

    .line 149
    goto :goto_5

    .line 150
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    :goto_5
    if-ltz v4, :cond_9

    .line 154
    .line 155
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 172
    .line 173
    const/high16 v3, 0x41800000    # 16.0f

    .line 174
    .line 175
    mul-float/2addr v2, v3

    .line 176
    float-to-int v2, v2

    .line 177
    add-int/2addr v1, v2

    .line 178
    add-int/2addr v1, v0

    .line 179
    move v2, v1

    .line 180
    goto :goto_6

    .line 181
    :cond_9
    move v2, v0

    .line 182
    goto :goto_6

    .line 183
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    add-int v2, v1, v0

    .line 188
    .line 189
    :cond_b
    :goto_6
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 190
    .line 191
    invoke-static {p0}, Landroidx/core/view/k0;->d(Landroid/view/View;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eq v0, v2, :cond_c

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 198
    .line 199
    .line 200
    if-nez p2, :cond_c

    .line 201
    .line 202
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 203
    .line 204
    .line 205
    :cond_c
    return-void
.end method

.method public setAllowStacking(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->a:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/appcompat/widget/ButtonBarLayout;->b:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ButtonBarLayout;->setStacked(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method
