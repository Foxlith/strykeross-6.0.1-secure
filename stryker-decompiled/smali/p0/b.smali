.class public final Lp0/b;
.super Landroidx/core/view/c;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lp0/b;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lp0/b;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    invoke-static {p1}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p2, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p1, "androidx.drawerlayout.widget.DrawerLayout"

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 6

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 7
    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Lh0/h;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, v2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    iput v2, p2, Lh0/h;->c:I

    .line 27
    .line 28
    iget-object v3, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 34
    .line 35
    invoke-static {p1}, Landroidx/core/view/k0;->f(Landroid/view/View;)Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    instance-of v5, v4, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    check-cast v4, Landroid/view/View;

    .line 44
    .line 45
    iput v2, p2, Lh0/h;->b:I

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v2, p0, Lp0/b;->a:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p2, v2}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p2, v2}, Lh0/h;->i(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {p2, v2}, Lh0/h;->a(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 122
    .line 123
    .line 124
    check-cast p1, Landroid/view/ViewGroup;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move v2, v1

    .line 131
    :goto_0
    if-ge v2, v0, :cond_3

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_2

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    :goto_1
    const-string p1, "androidx.drawerlayout.widget.DrawerLayout"

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 160
    .line 161
    .line 162
    sget-object p2, Lh0/g;->e:Lh0/g;

    .line 163
    .line 164
    iget-object p2, p2, Lh0/g;->a:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 169
    .line 170
    .line 171
    sget-object p2, Lh0/g;->f:Lh0/g;

    .line 172
    .line 173
    iget-object p2, p2, Lh0/g;->a:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
