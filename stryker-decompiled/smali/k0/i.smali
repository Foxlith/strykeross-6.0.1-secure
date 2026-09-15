.class public final Lk0/i;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk0/i;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lk0/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 14
    .line 15
    const-class v0, Landroid/widget/ScrollView;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p2, v0}, Lh0/m;->c(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {p2, p1}, Lh0/m;->d(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 2

    .line 1
    iget v0, p0, Lk0/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p2, Lh0/h;->b:I

    .line 17
    .line 18
    iget-object p1, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 29
    .line 30
    const-class v0, Landroid/widget/ScrollView;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p2, v1}, Lh0/h;->k(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-lez v1, :cond_1

    .line 60
    .line 61
    sget-object v1, Lh0/g;->i:Lh0/g;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Lh0/h;->b(Lh0/g;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lh0/g;->m:Lh0/g;

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Lh0/h;->b(Lh0/g;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ge p1, v0, :cond_2

    .line 76
    .line 77
    sget-object p1, Lh0/g;->h:Lh0/g;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lh0/h;->b(Lh0/g;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lh0/g;->n:Lh0/g;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lh0/h;->b(Lh0/g;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget v0, p0, Lk0/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez p3, :cond_2

    .line 28
    .line 29
    :cond_1
    :goto_0
    move v0, v1

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    :cond_3
    const/16 v2, 0x1000

    .line 62
    .line 63
    if-eq p2, v2, :cond_5

    .line 64
    .line 65
    const/16 v2, 0x2000

    .line 66
    .line 67
    if-eq p2, v2, :cond_4

    .line 68
    .line 69
    const v2, 0x1020038

    .line 70
    .line 71
    .line 72
    if-eq p2, v2, :cond_4

    .line 73
    .line 74
    const v2, 0x102003a

    .line 75
    .line 76
    .line 77
    if-eq p2, v2, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int/2addr p3, p2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    sub-int/2addr p3, p2

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    sub-int/2addr p2, p3

    .line 95
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eq p2, p3, :cond_1

    .line 104
    .line 105
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    sub-int/2addr v1, p3

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    sub-int/2addr p2, p3

    .line 115
    invoke-virtual {p1, v1, p2, v0}, Landroidx/core/widget/NestedScrollView;->n(IIZ)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    sub-int/2addr p3, p2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    sub-int/2addr p3, p2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    add-int/2addr p2, p3

    .line 134
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    if-eq p2, p3, :cond_1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_2
    return v0

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
