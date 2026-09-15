.class public abstract Landroidx/customview/widget/b;
.super Landroidx/core/view/c;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroidx/customview/widget/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/c;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/d;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroidx/customview/widget/a;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroidx/customview/widget/b;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Ld/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ld/d;-><init>(I)V

    sput-object v0, Landroidx/customview/widget/b;->NODE_ADAPTER:Landroidx/customview/widget/c;

    new-instance v0, Ld/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ld/d;-><init>(I)V

    sput-object v0, Landroidx/customview/widget/b;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/d;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/core/view/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/customview/widget/b;->mTempParentRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/customview/widget/b;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 29
    .line 30
    const/high16 v0, -0x80000000

    .line 31
    .line 32
    iput v0, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 33
    .line 34
    iput v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    .line 35
    .line 36
    iput v0, p0, Landroidx/customview/widget/b;->mHoveredVirtualViewId:I

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "accessibility"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 53
    .line 54
    iput-object v0, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-static {p1}, Landroidx/core/view/k0;->c(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    invoke-static {p1, v0}, Landroidx/core/view/k0;->s(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    const-string v0, "View may not be null"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method


# virtual methods
.method public final a(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p0, p1}, Landroidx/customview/widget/b;->obtainAccessibilityNodeInfo(I)Lh0/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lh0/h;->e()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/b;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 81
    .line 82
    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 96
    .line 97
    invoke-static {p2, v0, p1}, Lh0/n;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    return-object p2

    .line 114
    :cond_2
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p2, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 121
    .line 122
    .line 123
    return-object p1
.end method

.method public final b(I)Lh0/h;
    .locals 8

    .line 1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lh0/h;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 15
    .line 16
    .line 17
    const-string v3, "android.view.View"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lh0/h;->g(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget-object v3, Landroidx/customview/widget/b;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 31
    .line 32
    const/4 v5, -0x1

    .line 33
    iput v5, v1, Lh0/h;->b:I

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/b;->onPopulateNodeForVirtualView(ILh0/h;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lh0/h;->e()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/customview/widget/b;->mTempParentRect:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lh0/h;->d(Landroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Landroidx/customview/widget/b;->mTempParentRect:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_10

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    and-int/lit8 v6, v4, 0x40

    .line 80
    .line 81
    if-nez v6, :cond_f

    .line 82
    .line 83
    const/16 v6, 0x80

    .line 84
    .line 85
    and-int/2addr v4, v6

    .line 86
    if-nez v4, :cond_e

    .line 87
    .line 88
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 102
    .line 103
    iput p1, v1, Lh0/h;->c:I

    .line 104
    .line 105
    invoke-virtual {v0, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 106
    .line 107
    .line 108
    iget v4, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    if-ne v4, p1, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v6}, Lh0/h;->a(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 121
    .line 122
    .line 123
    const/16 v4, 0x40

    .line 124
    .line 125
    invoke-virtual {v1, v4}, Lh0/h;->a(I)V

    .line 126
    .line 127
    .line 128
    :goto_1
    iget v4, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    .line 129
    .line 130
    if-ne v4, p1, :cond_3

    .line 131
    .line 132
    move p1, v2

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move p1, v7

    .line 135
    :goto_2
    if-eqz p1, :cond_4

    .line 136
    .line 137
    const/4 v4, 0x2

    .line 138
    invoke-virtual {v1, v4}, Lh0/h;->a(I)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_5

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lh0/h;->a(I)V

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 152
    .line 153
    .line 154
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 155
    .line 156
    iget-object v4, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 157
    .line 158
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_8

    .line 173
    .line 174
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-virtual {v1, p1}, Lh0/h;->d(Landroid/graphics/Rect;)V

    .line 177
    .line 178
    .line 179
    iget p1, v1, Lh0/h;->b:I

    .line 180
    .line 181
    if-eq p1, v5, :cond_7

    .line 182
    .line 183
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Lh0/h;

    .line 188
    .line 189
    invoke-direct {v0, p1}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 190
    .line 191
    .line 192
    iget p1, v1, Lh0/h;->b:I

    .line 193
    .line 194
    :goto_4
    iget-object v3, v0, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 195
    .line 196
    if-eq p1, v5, :cond_6

    .line 197
    .line 198
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 199
    .line 200
    iput v5, v0, Lh0/h;->b:I

    .line 201
    .line 202
    invoke-virtual {v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 203
    .line 204
    .line 205
    sget-object v4, Landroidx/customview/widget/b;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/b;->onPopulateNodeForVirtualView(ILh0/h;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempParentRect:Landroid/graphics/Rect;

    .line 214
    .line 215
    invoke-virtual {v0, p1}, Lh0/h;->d(Landroid/graphics/Rect;)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 219
    .line 220
    iget-object v3, p0, Landroidx/customview/widget/b;->mTempParentRect:Landroid/graphics/Rect;

    .line 221
    .line 222
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 223
    .line 224
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 225
    .line 226
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 227
    .line 228
    .line 229
    iget p1, v0, Lh0/h;->b:I

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_6
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 233
    .line 234
    .line 235
    :cond_7
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 236
    .line 237
    iget-object v0, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 238
    .line 239
    aget v0, v0, v7

    .line 240
    .line 241
    iget-object v3, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    sub-int/2addr v0, v3

    .line 248
    iget-object v3, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 249
    .line 250
    aget v3, v3, v2

    .line 251
    .line 252
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 253
    .line 254
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    sub-int/2addr v3, v4

    .line 259
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 260
    .line 261
    .line 262
    :cond_8
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 263
    .line 264
    iget-object v0, p0, Landroidx/customview/widget/b;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_d

    .line 271
    .line 272
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 273
    .line 274
    iget-object v0, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 275
    .line 276
    aget v0, v0, v7

    .line 277
    .line 278
    iget-object v3, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 279
    .line 280
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    sub-int/2addr v0, v3

    .line 285
    iget-object v3, p0, Landroidx/customview/widget/b;->mTempGlobalRect:[I

    .line 286
    .line 287
    aget v3, v3, v2

    .line 288
    .line 289
    iget-object v4, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    sub-int/2addr v3, v4

    .line 296
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 300
    .line 301
    iget-object v0, p0, Landroidx/customview/widget/b;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_d

    .line 308
    .line 309
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 310
    .line 311
    iget-object v0, v1, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 312
    .line 313
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 314
    .line 315
    .line 316
    iget-object p1, p0, Landroidx/customview/widget/b;->mTempScreenRect:Landroid/graphics/Rect;

    .line 317
    .line 318
    if-eqz p1, :cond_d

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    if-eqz p1, :cond_9

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_9
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-eqz p1, :cond_a

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_a
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 337
    .line 338
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    instance-of v3, p1, Landroid/view/View;

    .line 343
    .line 344
    if-eqz v3, :cond_c

    .line 345
    .line 346
    check-cast p1, Landroid/view/View;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    const/4 v4, 0x0

    .line 353
    cmpg-float v3, v3, v4

    .line 354
    .line 355
    if-lez v3, :cond_d

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_b

    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_c
    if-eqz p1, :cond_d

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 367
    .line 368
    .line 369
    :cond_d
    :goto_5
    return-object v1

    .line 370
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 371
    .line 372
    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 373
    .line 374
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    throw p1

    .line 378
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 379
    .line 380
    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    .line 381
    .line 382
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p1

    .line 386
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 387
    .line 388
    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    .line 389
    .line 390
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw p1
.end method

.method public final c(ILandroid/graphics/Rect;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Landroidx/customview/widget/b;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    new-instance v4, Ln/l;

    .line 16
    .line 17
    invoke-direct {v4}, Ln/l;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move v6, v5

    .line 22
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-ge v6, v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v0, v7}, Landroidx/customview/widget/b;->b(I)Lh0/h;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    invoke-virtual {v4, v8, v7}, Ln/l;->d(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v3, v0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    .line 59
    .line 60
    const/high16 v6, -0x80000000

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    if-ne v3, v6, :cond_1

    .line 64
    .line 65
    move-object v3, v7

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v4, v3, v7}, Ln/l;->c(ILjava/lang/Integer;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lh0/h;

    .line 72
    .line 73
    :goto_1
    const/4 v8, 0x1

    .line 74
    const/4 v9, 0x2

    .line 75
    const/4 v10, -0x1

    .line 76
    if-eq v1, v8, :cond_15

    .line 77
    .line 78
    if-eq v1, v9, :cond_15

    .line 79
    .line 80
    const/16 v9, 0x82

    .line 81
    .line 82
    const/16 v11, 0x42

    .line 83
    .line 84
    const/16 v12, 0x21

    .line 85
    .line 86
    const/16 v13, 0x11

    .line 87
    .line 88
    if-eq v1, v13, :cond_3

    .line 89
    .line 90
    if-eq v1, v12, :cond_3

    .line 91
    .line 92
    if-eq v1, v11, :cond_3

    .line 93
    .line 94
    if-ne v1, v9, :cond_2

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1

    .line 105
    :cond_3
    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    .line 106
    .line 107
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .line 109
    .line 110
    iget v15, v0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    .line 111
    .line 112
    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    .line 113
    .line 114
    if-eq v15, v6, :cond_4

    .line 115
    .line 116
    invoke-virtual {v0, v15}, Landroidx/customview/widget/b;->obtainAccessibilityNodeInfo(I)Lh0/h;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v14}, Lh0/h;->d(Landroid/graphics/Rect;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_5
    iget-object v2, v0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eq v1, v13, :cond_9

    .line 141
    .line 142
    if-eq v1, v12, :cond_8

    .line 143
    .line 144
    if-eq v1, v11, :cond_7

    .line 145
    .line 146
    if-ne v1, v9, :cond_6

    .line 147
    .line 148
    invoke-virtual {v14, v5, v10, v15, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v1

    .line 158
    :cond_7
    invoke-virtual {v14, v10, v5, v10, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    invoke-virtual {v14, v5, v2, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    invoke-virtual {v14, v15, v5, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    .line 168
    .line 169
    :goto_3
    sget-object v2, Landroidx/customview/widget/b;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/d;

    .line 170
    .line 171
    sget-object v15, Landroidx/customview/widget/b;->NODE_ADAPTER:Landroidx/customview/widget/c;

    .line 172
    .line 173
    new-instance v6, Landroid/graphics/Rect;

    .line 174
    .line 175
    invoke-direct {v6, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 176
    .line 177
    .line 178
    if-eq v1, v13, :cond_d

    .line 179
    .line 180
    if-eq v1, v12, :cond_c

    .line 181
    .line 182
    if-eq v1, v11, :cond_b

    .line 183
    .line 184
    if-ne v1, v9, :cond_a

    .line 185
    .line 186
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    add-int/2addr v7, v8

    .line 191
    neg-int v7, v7

    .line 192
    :goto_4
    invoke-virtual {v6, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1

    .line 202
    :cond_b
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    add-int/2addr v7, v8

    .line 207
    neg-int v7, v7

    .line 208
    :goto_5
    invoke-virtual {v6, v7, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    add-int/2addr v7, v8

    .line 217
    goto :goto_4

    .line 218
    :cond_d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    add-int/2addr v7, v8

    .line 223
    goto :goto_5

    .line 224
    :goto_6
    check-cast v2, Ld/d;

    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    iget v2, v4, Ln/l;->c:I

    .line 230
    .line 231
    new-instance v7, Landroid/graphics/Rect;

    .line 232
    .line 233
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 234
    .line 235
    .line 236
    move v8, v5

    .line 237
    const/16 v16, 0x0

    .line 238
    .line 239
    :goto_7
    if-ge v8, v2, :cond_14

    .line 240
    .line 241
    iget-object v9, v4, Ln/l;->b:[Ljava/lang/Object;

    .line 242
    .line 243
    aget-object v9, v9, v8

    .line 244
    .line 245
    check-cast v9, Lh0/h;

    .line 246
    .line 247
    if-ne v9, v3, :cond_e

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_e
    move-object v11, v15

    .line 251
    check-cast v11, Ld/d;

    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v9, v7}, Lh0/h;->d(Landroid/graphics/Rect;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v14, v7}, Lg/a;->n(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    if-nez v11, :cond_f

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_f
    invoke-static {v1, v14, v6}, Lg/a;->n(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-nez v11, :cond_10

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_10
    invoke-static {v1, v14, v7, v6}, Lg/a;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    if-eqz v11, :cond_11

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_11
    invoke-static {v1, v14, v6, v7}, Lg/a;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    if-eqz v11, :cond_12

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_12
    invoke-static {v1, v14, v7}, Lg/a;->p(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    invoke-static {v1, v14, v7}, Lg/a;->q(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    mul-int/lit8 v13, v11, 0xd

    .line 296
    .line 297
    mul-int/2addr v13, v11

    .line 298
    mul-int/2addr v12, v12

    .line 299
    add-int/2addr v12, v13

    .line 300
    invoke-static {v1, v14, v6}, Lg/a;->p(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 301
    .line 302
    .line 303
    move-result v11

    .line 304
    invoke-static {v1, v14, v6}, Lg/a;->q(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    mul-int/lit8 v17, v11, 0xd

    .line 309
    .line 310
    mul-int v17, v17, v11

    .line 311
    .line 312
    mul-int/2addr v13, v13

    .line 313
    add-int v13, v13, v17

    .line 314
    .line 315
    if-ge v12, v13, :cond_13

    .line 316
    .line 317
    :goto_8
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 318
    .line 319
    .line 320
    move-object/from16 v16, v9

    .line 321
    .line 322
    :cond_13
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_14
    :goto_a
    move-object/from16 v1, v16

    .line 326
    .line 327
    goto/16 :goto_10

    .line 328
    .line 329
    :cond_15
    iget-object v2, v0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 330
    .line 331
    sget-object v6, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 332
    .line 333
    invoke-static {v2}, Landroidx/core/view/l0;->d(Landroid/view/View;)I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-ne v2, v8, :cond_16

    .line 338
    .line 339
    move v2, v8

    .line 340
    goto :goto_b

    .line 341
    :cond_16
    move v2, v5

    .line 342
    :goto_b
    sget-object v6, Landroidx/customview/widget/b;->SPARSE_VALUES_ADAPTER:Landroidx/customview/widget/d;

    .line 343
    .line 344
    sget-object v7, Landroidx/customview/widget/b;->NODE_ADAPTER:Landroidx/customview/widget/c;

    .line 345
    .line 346
    check-cast v6, Ld/d;

    .line 347
    .line 348
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    iget v6, v4, Ln/l;->c:I

    .line 352
    .line 353
    new-instance v11, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    .line 357
    .line 358
    move v12, v5

    .line 359
    :goto_c
    if-ge v12, v6, :cond_17

    .line 360
    .line 361
    iget-object v13, v4, Ln/l;->b:[Ljava/lang/Object;

    .line 362
    .line 363
    aget-object v13, v13, v12

    .line 364
    .line 365
    check-cast v13, Lh0/h;

    .line 366
    .line 367
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    add-int/lit8 v12, v12, 0x1

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_17
    new-instance v6, Landroidx/customview/widget/e;

    .line 374
    .line 375
    invoke-direct {v6, v2, v7}, Landroidx/customview/widget/e;-><init>(ZLandroidx/customview/widget/c;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v11, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    .line 380
    .line 381
    if-eq v1, v8, :cond_1b

    .line 382
    .line 383
    if-ne v1, v9, :cond_1a

    .line 384
    .line 385
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-nez v3, :cond_18

    .line 390
    .line 391
    move v2, v10

    .line 392
    goto :goto_d

    .line 393
    :cond_18
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    :goto_d
    add-int/2addr v2, v8

    .line 398
    if-ge v2, v1, :cond_19

    .line 399
    .line 400
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    goto :goto_f

    .line 405
    :cond_19
    const/4 v7, 0x0

    .line 406
    goto :goto_f

    .line 407
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 408
    .line 409
    const-string v2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 410
    .line 411
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    throw v1

    .line 415
    :cond_1b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v3, :cond_1c

    .line 420
    .line 421
    goto :goto_e

    .line 422
    :cond_1c
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    :goto_e
    sub-int/2addr v1, v8

    .line 427
    if-ltz v1, :cond_19

    .line 428
    .line 429
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    :goto_f
    move-object/from16 v16, v7

    .line 434
    .line 435
    check-cast v16, Lh0/h;

    .line 436
    .line 437
    goto :goto_a

    .line 438
    :goto_10
    if-nez v1, :cond_1d

    .line 439
    .line 440
    const/high16 v6, -0x80000000

    .line 441
    .line 442
    goto :goto_13

    .line 443
    :cond_1d
    :goto_11
    iget v2, v4, Ln/l;->c:I

    .line 444
    .line 445
    if-ge v5, v2, :cond_1f

    .line 446
    .line 447
    iget-object v2, v4, Ln/l;->b:[Ljava/lang/Object;

    .line 448
    .line 449
    aget-object v2, v2, v5

    .line 450
    .line 451
    if-ne v2, v1, :cond_1e

    .line 452
    .line 453
    move v10, v5

    .line 454
    goto :goto_12

    .line 455
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    .line 456
    .line 457
    goto :goto_11

    .line 458
    :cond_1f
    :goto_12
    iget-object v1, v4, Ln/l;->a:[I

    .line 459
    .line 460
    aget v6, v1, v10

    .line 461
    .line 462
    :goto_13
    invoke-virtual {v0, v6}, Landroidx/customview/widget/b;->requestKeyboardFocusForVirtualView(I)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    return v1
.end method

.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    iget v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/b;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v2, 0x100

    .line 24
    .line 25
    const/16 v3, 0x80

    .line 26
    .line 27
    const/4 v4, 0x7

    .line 28
    const/4 v5, 0x1

    .line 29
    const/high16 v6, -0x80000000

    .line 30
    .line 31
    if-eq v0, v4, :cond_4

    .line 32
    .line 33
    const/16 v4, 0x9

    .line 34
    .line 35
    if-eq v0, v4, :cond_4

    .line 36
    .line 37
    const/16 p1, 0xa

    .line 38
    .line 39
    if-eq v0, p1, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_1
    iget p1, p0, Landroidx/customview/widget/b;->mHoveredVirtualViewId:I

    .line 43
    .line 44
    if-eq p1, v6, :cond_3

    .line 45
    .line 46
    if-ne p1, v6, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput v6, p0, Landroidx/customview/widget/b;->mHoveredVirtualViewId:I

    .line 50
    .line 51
    invoke-virtual {p0, v6, v3}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v2}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 55
    .line 56
    .line 57
    :goto_0
    return v5

    .line 58
    :cond_3
    return v1

    .line 59
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0, v0, p1}, Landroidx/customview/widget/b;->getVirtualViewAt(FF)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget v0, p0, Landroidx/customview/widget/b;->mHoveredVirtualViewId:I

    .line 72
    .line 73
    if-ne v0, p1, :cond_5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    iput p1, p0, Landroidx/customview/widget/b;->mHoveredVirtualViewId:I

    .line 77
    .line 78
    invoke-virtual {p0, p1, v3}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0, v2}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 82
    .line 83
    .line 84
    :goto_1
    if-eq p1, v6, :cond_6

    .line 85
    .line 86
    move v1, v5

    .line 87
    :cond_6
    :goto_2
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v3, 0x3d

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v3, :cond_6

    .line 17
    .line 18
    const/16 v3, 0x42

    .line 19
    .line 20
    if-eq v0, v3, :cond_4

    .line 21
    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_8

    .line 32
    .line 33
    const/16 v5, 0x13

    .line 34
    .line 35
    if-eq v0, v5, :cond_1

    .line 36
    .line 37
    const/16 v5, 0x15

    .line 38
    .line 39
    if-eq v0, v5, :cond_0

    .line 40
    .line 41
    const/16 v5, 0x16

    .line 42
    .line 43
    if-eq v0, v5, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x82

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v3, 0x11

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v3, 0x21

    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p1, v2

    .line 58
    move v0, v1

    .line 59
    :goto_1
    if-ge v1, p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v3, v4}, Landroidx/customview/widget/b;->c(ILandroid/graphics/Rect;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    move v0, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v1, v0

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_8

    .line 84
    .line 85
    iget p1, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    .line 86
    .line 87
    const/high16 v0, -0x80000000

    .line 88
    .line 89
    if-eq p1, v0, :cond_5

    .line 90
    .line 91
    const/16 v0, 0x10

    .line 92
    .line 93
    invoke-virtual {p0, p1, v0, v4}, Landroidx/customview/widget/b;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    :cond_5
    move v1, v2

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    invoke-virtual {p0, p1, v4}, Landroidx/customview/widget/b;->c(ILandroid/graphics/Rect;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p0, v2, v4}, Landroidx/customview/widget/b;->c(ILandroid/graphics/Rect;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :cond_8
    :goto_2
    return v1

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    iget v0, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/customview/widget/b;->mNodeProvider:Landroidx/customview/widget/a;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/customview/widget/a;

    invoke-direct {p1, p0}, Landroidx/customview/widget/a;-><init>(Landroidx/customview/widget/b;)V

    iput-object p1, p0, Landroidx/customview/widget/b;->mNodeProvider:Landroidx/customview/widget/a;

    :cond_0
    iget-object p1, p0, Landroidx/customview/widget/b;->mNodeProvider:Landroidx/customview/widget/a;

    return-object p1
.end method

.method public getFocusedVirtualView()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/customview/widget/b;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    iget v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method public final invalidateRoot()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/b;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/b;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/b;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lh0/b;->b(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object p2, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 3
    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public obtainAccessibilityNodeInfo(I)Lh0/h;
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lh0/h;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lh0/h;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 16
    .line 17
    sget-object v2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/customview/widget/b;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-gtz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string v0, "Views cannot have both real and virtual children"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v2, 0x0

    .line 56
    :goto_1
    if-ge v2, p1, :cond_2

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v5, v0, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 71
    .line 72
    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    return-object v0

    .line 79
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/b;->b(I)Lh0/h;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    iget v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/b;->clearKeyboardFocusForVirtualView(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/customview/widget/b;->c(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/b;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V

    invoke-virtual {p0, p2}, Landroidx/customview/widget/b;->onPopulateNodeForHost(Lh0/h;)V

    return-void
.end method

.method public abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onPopulateNodeForHost(Lh0/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onPopulateNodeForVirtualView(ILh0/h;)V
.end method

.method public onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p2, v0, :cond_6

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p2, v1, :cond_5

    .line 9
    .line 10
    const/16 v1, 0x40

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/high16 v3, 0x10000

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    if-eq p2, v1, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/b;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget p2, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 29
    .line 30
    if-ne p2, p1, :cond_1

    .line 31
    .line 32
    iput v4, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v3}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    move v0, v2

    .line 44
    :goto_1
    move p1, v0

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object p2, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget p2, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 64
    .line 65
    if-eq p2, p1, :cond_1

    .line 66
    .line 67
    if-eq p2, v4, :cond_4

    .line 68
    .line 69
    iput v4, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 70
    .line 71
    iget-object p3, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p2, v3}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 77
    .line 78
    .line 79
    :cond_4
    iput p1, p0, Landroidx/customview/widget/b;->mAccessibilityFocusedVirtualViewId:I

    .line 80
    .line 81
    iget-object p2, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 84
    .line 85
    .line 86
    const p2, 0x8000

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/customview/widget/b;->clearKeyboardFocusForVirtualView(I)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/customview/widget/b;->requestKeyboardFocusForVirtualView(I)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    :goto_2
    return p1

    .line 103
    :cond_7
    iget-object p1, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    .line 104
    .line 105
    sget-object v0, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 106
    .line 107
    invoke-static {p1, p2, p3}, Landroidx/core/view/k0;->j(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/customview/widget/b;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    iput p1, p0, Landroidx/customview/widget/b;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/b;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroidx/customview/widget/b;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Landroidx/customview/widget/b;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/b;->a(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroidx/customview/widget/b;->mHost:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
