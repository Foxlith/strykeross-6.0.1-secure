.class public final Landroidx/appcompat/widget/a1;
.super Landroid/widget/Spinner;
.source "SourceFile"


# static fields
.field public static final i:[I


# instance fields
.field public final a:Landroidx/appcompat/widget/t;

.field public final b:Landroid/content/Context;

.field public final c:Landroidx/appcompat/widget/k;

.field public d:Landroid/widget/SpinnerAdapter;

.field public final e:Z

.field public final f:Landroidx/appcompat/widget/z0;

.field public g:I

.field public final h:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10102f1

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/a1;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 1
    const v0, 0x7f040469

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1, p0}, Landroidx/appcompat/widget/d4;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Le/a;->w:[I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Landroidx/appcompat/widget/t;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Landroidx/appcompat/widget/t;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iput-object v4, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    new-instance v5, Li/f;

    .line 43
    .line 44
    invoke-direct {v5, p1, v4}, Li/f;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    iput-object v5, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    .line 51
    .line 52
    :goto_0
    const/4 v4, -0x1

    .line 53
    const/4 v5, 0x0

    .line 54
    :try_start_0
    sget-object v6, Landroidx/appcompat/widget/a1;->i:[I

    .line 55
    .line 56
    invoke-virtual {p1, p2, v6, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 57
    .line 58
    .line 59
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 67
    .line 68
    .line 69
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    move-object v5, v6

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :catch_0
    move-exception v7

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :catch_1
    move-exception v7

    .line 85
    move-object v6, v5

    .line 86
    :goto_2
    :try_start_2
    const-string v8, "AppCompatSpinner"

    .line 87
    .line 88
    const-string v9, "Could not read android:spinnerMode"

    .line 89
    .line 90
    invoke-static {v8, v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_3
    const/4 v6, 0x2

    .line 97
    const/4 v7, 0x1

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    if-eq v4, v7, :cond_3

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_3
    new-instance v4, Landroidx/appcompat/widget/x0;

    .line 104
    .line 105
    iget-object v8, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    .line 106
    .line 107
    invoke-direct {v4, p0, v8, p2}, Landroidx/appcompat/widget/x0;-><init>(Landroidx/appcompat/widget/a1;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    .line 109
    .line 110
    iget-object v8, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {v8, p2, v1, v0}, Landroidx/appcompat/widget/h4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/h4;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/4 v8, 0x3

    .line 117
    const/4 v9, -0x2

    .line 118
    iget-object v10, v1, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 119
    .line 120
    invoke-virtual {v10, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iput v8, p0, Landroidx/appcompat/widget/a1;->g:I

    .line 125
    .line 126
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/v2;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    iput-object v6, v4, Landroidx/appcompat/widget/x0;->D:Ljava/lang/CharSequence;

    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/appcompat/widget/h4;->f()V

    .line 140
    .line 141
    .line 142
    iput-object v4, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 143
    .line 144
    new-instance v1, Landroidx/appcompat/widget/k;

    .line 145
    .line 146
    invoke-direct {v1, p0, p0, v4, v7}, Landroidx/appcompat/widget/k;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    .line 147
    .line 148
    .line 149
    iput-object v1, p0, Landroidx/appcompat/widget/a1;->c:Landroidx/appcompat/widget/k;

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    new-instance v1, Landroidx/appcompat/widget/u0;

    .line 153
    .line 154
    invoke-direct {v1, p0}, Landroidx/appcompat/widget/u0;-><init>(Landroidx/appcompat/widget/a1;)V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 158
    .line 159
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iput-object v4, v1, Landroidx/appcompat/widget/u0;->c:Ljava/lang/CharSequence;

    .line 164
    .line 165
    :goto_4
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 172
    .line 173
    const v4, 0x1090008

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, p1, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    const p1, 0x7f0d0105

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/a1;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    .line 190
    .line 191
    iput-boolean v7, p0, Landroidx/appcompat/widget/a1;->e:Z

    .line 192
    .line 193
    iget-object p1, p0, Landroidx/appcompat/widget/a1;->d:Landroid/widget/SpinnerAdapter;

    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/a1;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    .line 199
    .line 200
    iput-object v5, p0, Landroidx/appcompat/widget/a1;->d:Landroid/widget/SpinnerAdapter;

    .line 201
    .line 202
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    .line 203
    .line 204
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/t;->d(Landroid/util/AttributeSet;I)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :goto_5
    if-eqz v5, :cond_7

    .line 209
    .line 210
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    .line 212
    .line 213
    :cond_7
    throw p1
.end method


# virtual methods
.method public final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v5, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v3

    rsub-int/lit8 v5, v5, 0xf

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    move v6, v3

    move-object v7, v5

    move v3, v0

    :goto_0
    if-ge v6, v4, :cond_3

    invoke-interface {p1, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v0, :cond_1

    move-object v7, v5

    move v0, v8

    :cond_1
    invoke-interface {p1, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    add-int/2addr v3, p2

    :cond_4
    return v3
.end method

.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->a()V

    :cond_0
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->b()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->m()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/a1;->g:I

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public final getInternalPopup()Landroidx/appcompat/widget/z0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    return-object v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->n()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    iget-object p2, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/a1;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Landroidx/appcompat/widget/y0;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Landroidx/appcompat/widget/y0;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/q0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/y0;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Landroidx/appcompat/widget/z0;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/y0;->a:Z

    .line 24
    .line 25
    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->c:Landroidx/appcompat/widget/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/widget/l2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final performClick()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/widget/z0;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/appcompat/widget/s0;->b(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p0}, Landroidx/appcompat/widget/s0;->a(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/z0;->l(II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/a1;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/a1;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/a1;->d:Landroid/widget/SpinnerAdapter;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/a1;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_1
    new-instance v2, Landroidx/appcompat/widget/v0;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Landroidx/appcompat/widget/v0;->a:Landroid/widget/SpinnerAdapter;

    instance-of v3, p1, Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListAdapter;

    iput-object v3, v2, Landroidx/appcompat/widget/v0;->b:Landroid/widget/ListAdapter;

    :cond_2
    if-eqz v1, :cond_3

    instance-of v3, p1, Landroid/widget/ThemedSpinnerAdapter;

    if-eqz v3, :cond_3

    check-cast p1, Landroid/widget/ThemedSpinnerAdapter;

    invoke-static {p1, v1}, Landroidx/appcompat/widget/t0;->a(Landroid/widget/ThemedSpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    .line 3
    :cond_3
    invoke-interface {v0, v2}, Landroidx/appcompat/widget/z0;->o(Landroid/widget/ListAdapter;)V

    :cond_4
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z0;->j(I)V

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z0;->k(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z0;->i(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/a1;->g:I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z0;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/a1;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/a1;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->f:Landroidx/appcompat/widget/z0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/z0;->h(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/a1;->a:Landroidx/appcompat/widget/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
