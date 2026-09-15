.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;
.super Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChangeSizeStrategy"
.end annotation


# instance fields
.field private final extending:Z

.field private final size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    iput-boolean p4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    return-void
.end method


# virtual methods
.method public createAnimator()Landroid/animation/AnimatorSet;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->getCurrentMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "width"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    aget-object v6, v2, v5

    .line 21
    .line 22
    new-array v7, v4, [F

    .line 23
    .line 24
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 25
    .line 26
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    int-to-float v8, v8

    .line 31
    aput v8, v7, v5

    .line 32
    .line 33
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 34
    .line 35
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    int-to-float v8, v8

    .line 40
    aput v8, v7, v3

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string v1, "height"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    aget-object v6, v2, v5

    .line 61
    .line 62
    new-array v7, v4, [F

    .line 63
    .line 64
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 65
    .line 66
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    int-to-float v8, v8

    .line 71
    aput v8, v7, v5

    .line 72
    .line 73
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 74
    .line 75
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    int-to-float v8, v8

    .line 80
    aput v8, v7, v3

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    const-string v1, "paddingStart"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    aget-object v6, v2, v5

    .line 101
    .line 102
    new-array v7, v4, [F

    .line 103
    .line 104
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 105
    .line 106
    sget-object v9, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 107
    .line 108
    invoke-static {v8}, Landroidx/core/view/l0;->f(Landroid/view/View;)I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    int-to-float v8, v8

    .line 113
    aput v8, v7, v5

    .line 114
    .line 115
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 116
    .line 117
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingStart()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    int-to-float v8, v8

    .line 122
    aput v8, v7, v3

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    const-string v1, "paddingEnd"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    aget-object v6, v2, v5

    .line 143
    .line 144
    new-array v7, v4, [F

    .line 145
    .line 146
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 147
    .line 148
    sget-object v9, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 149
    .line 150
    invoke-static {v8}, Landroidx/core/view/l0;->e(Landroid/view/View;)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    int-to-float v8, v8

    .line 155
    aput v8, v7, v5

    .line 156
    .line 157
    iget-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 158
    .line 159
    invoke-interface {v8}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingEnd()I

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    int-to-float v8, v8

    .line 164
    aput v8, v7, v3

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    const-string v1, "labelOpacity"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->hasPropertyValues(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lcom/google/android/material/animation/MotionSpec;->getPropertyValues(Ljava/lang/String;)[Landroid/animation/PropertyValuesHolder;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-boolean v6, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 185
    .line 186
    const/high16 v7, 0x3f800000    # 1.0f

    .line 187
    .line 188
    const/4 v8, 0x0

    .line 189
    if-eqz v6, :cond_4

    .line 190
    .line 191
    move v9, v8

    .line 192
    goto :goto_0

    .line 193
    :cond_4
    move v9, v7

    .line 194
    :goto_0
    if-eqz v6, :cond_5

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    move v7, v8

    .line 198
    :goto_1
    aget-object v6, v2, v5

    .line 199
    .line 200
    new-array v4, v4, [F

    .line 201
    .line 202
    aput v9, v4, v5

    .line 203
    .line 204
    aput v7, v4, v3

    .line 205
    .line 206
    invoke-virtual {v6, v4}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/animation/MotionSpec;->setPropertyValues(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    invoke-super {p0, v0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->createAnimator(Lcom/google/android/material/animation/MotionSpec;)Landroid/animation/AnimatorSet;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0
.end method

.method public getDefaultMotionSpecResource()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_expand_motion_spec:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$animator;->mtrl_extended_fab_change_size_collapse_motion_spec:I

    :goto_0
    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationEnd()V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$602(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$502(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$602(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onExtended(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onShrunken(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    :goto_0
    return-void
.end method

.method public performNow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$502(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 22
    .line 23
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$302(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 29
    .line 30
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$202(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 42
    .line 43
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    .line 53
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingStart()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->size:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 70
    .line 71
    invoke-interface {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getPaddingEnd()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    sget-object v5, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 82
    .line 83
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/view/l0;->k(Landroid/view/View;IIII)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public shouldCancel()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->extending:Z

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$500(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
