.class public final Landroidx/appcompat/widget/x0;
.super Landroidx/appcompat/widget/v2;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/z0;


# instance fields
.field public D:Ljava/lang/CharSequence;

.field public E:Landroid/widget/ListAdapter;

.field public final F:Landroid/graphics/Rect;

.field public G:I

.field public final synthetic H:Landroidx/appcompat/widget/a1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/a1;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const v1, 0x7f040469

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3, v1, v0}, Landroidx/appcompat/widget/v2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/appcompat/widget/x0;->F:Landroid/graphics/Rect;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/appcompat/widget/v2;->p:Landroid/view/View;

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Landroidx/appcompat/widget/v2;->z:Z

    .line 21
    .line 22
    iget-object p3, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 25
    .line 26
    .line 27
    new-instance p3, Lf/g;

    .line 28
    .line 29
    invoke-direct {p3, p0, p1, p2}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iput-object p3, p0, Landroidx/appcompat/widget/v2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->D:Ljava/lang/CharSequence;

    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/x0;->G:I

    return-void
.end method

.method public final l(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/x0;->r()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    iget-object v3, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/widget/v2;->d()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1}, Landroidx/appcompat/widget/s0;->d(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p2}, Landroidx/appcompat/widget/s0;->c(Landroid/view/View;I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v2, p0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/i2;->setListSelectionHidden(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v2, p2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 61
    .line 62
    .line 63
    :cond_0
    if-eqz v1, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p2, Landroidx/appcompat/widget/q0;

    .line 73
    .line 74
    invoke-direct {p2, p0, v3}, Landroidx/appcompat/widget/q0;-><init>(Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroidx/appcompat/widget/w0;

    .line 81
    .line 82
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/w0;-><init>(Landroidx/appcompat/widget/x0;Landroidx/appcompat/widget/q0;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->D:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/v2;->o(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/x0;->E:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final r()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v3, v2, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v3, v2, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget v1, v3, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    neg-int v1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v2, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    move v1, v3

    .line 39
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget v6, v2, Landroidx/appcompat/widget/a1;->g:I

    .line 52
    .line 53
    const/4 v7, -0x2

    .line 54
    if-ne v6, v7, :cond_3

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/appcompat/widget/x0;->E:Landroid/widget/ListAdapter;

    .line 57
    .line 58
    check-cast v6, Landroid/widget/SpinnerAdapter;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v6, v0}, Landroidx/appcompat/widget/a1;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .line 82
    iget-object v7, v2, Landroidx/appcompat/widget/a1;->h:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    sub-int/2addr v6, v8

    .line 87
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    sub-int/2addr v6, v7

    .line 90
    if-le v0, v6, :cond_2

    .line 91
    .line 92
    move v0, v6

    .line 93
    :cond_2
    sub-int v6, v5, v3

    .line 94
    .line 95
    sub-int/2addr v6, v4

    .line 96
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/v2;->q(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const/4 v0, -0x1

    .line 105
    if-ne v6, v0, :cond_4

    .line 106
    .line 107
    sub-int v0, v5, v3

    .line 108
    .line 109
    sub-int/2addr v0, v4

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/v2;->q(I)V

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-static {v2}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    sub-int/2addr v5, v4

    .line 121
    iget v0, p0, Landroidx/appcompat/widget/v2;->e:I

    .line 122
    .line 123
    sub-int/2addr v5, v0

    .line 124
    iget v0, p0, Landroidx/appcompat/widget/x0;->G:I

    .line 125
    .line 126
    sub-int/2addr v5, v0

    .line 127
    add-int/2addr v5, v1

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/x0;->G:I

    .line 130
    .line 131
    add-int/2addr v3, v0

    .line 132
    add-int v5, v3, v1

    .line 133
    .line 134
    :goto_3
    iput v5, p0, Landroidx/appcompat/widget/v2;->f:I

    .line 135
    .line 136
    return-void
.end method
