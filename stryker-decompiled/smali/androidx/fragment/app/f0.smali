.class public abstract Landroidx/fragment/app/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d0;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-eqz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    :goto_0
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const v3, 0x7f0a06b3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 49
    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    new-instance p0, Landroidx/fragment/app/d0;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Landroidx/fragment/app/d0;-><init>(Landroid/view/animation/Animation;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_5
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    new-instance p0, Landroidx/fragment/app/d0;

    .line 83
    .line 84
    invoke-direct {p0, p1}, Landroidx/fragment/app/d0;-><init>(Landroid/animation/Animator;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_6
    if-nez p3, :cond_d

    .line 89
    .line 90
    if-eqz v0, :cond_d

    .line 91
    .line 92
    const/16 p1, 0x1001

    .line 93
    .line 94
    if-eq v0, p1, :cond_b

    .line 95
    .line 96
    const/16 p1, 0x1003

    .line 97
    .line 98
    if-eq v0, p1, :cond_9

    .line 99
    .line 100
    const/16 p1, 0x2002

    .line 101
    .line 102
    if-eq v0, p1, :cond_7

    .line 103
    .line 104
    const/4 p1, -0x1

    .line 105
    :goto_1
    move p3, p1

    .line 106
    goto :goto_2

    .line 107
    :cond_7
    if-eqz p2, :cond_8

    .line 108
    .line 109
    const p1, 0x7f020003

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_8
    const p1, 0x7f020004

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_9
    if-eqz p2, :cond_a

    .line 118
    .line 119
    const p1, 0x7f020005

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_a
    const p1, 0x7f020006

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_b
    if-eqz p2, :cond_c

    .line 128
    .line 129
    const p1, 0x7f020007

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_c
    const p1, 0x7f020008

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_d
    :goto_2
    if-eqz p3, :cond_10

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string p2, "anim"

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_e

    .line 154
    .line 155
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    if-eqz p2, :cond_10

    .line 160
    .line 161
    new-instance v0, Landroidx/fragment/app/d0;

    .line 162
    .line 163
    invoke-direct {v0, p2}, Landroidx/fragment/app/d0;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .line 165
    .line 166
    return-object v0

    .line 167
    :catch_0
    move-exception p0

    .line 168
    throw p0

    .line 169
    :catch_1
    :cond_e
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-eqz p2, :cond_10

    .line 174
    .line 175
    new-instance v0, Landroidx/fragment/app/d0;

    .line 176
    .line 177
    invoke-direct {v0, p2}, Landroidx/fragment/app/d0;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :catch_2
    move-exception p2

    .line 182
    if-nez p1, :cond_f

    .line 183
    .line 184
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-eqz p0, :cond_10

    .line 189
    .line 190
    new-instance p1, Landroidx/fragment/app/d0;

    .line 191
    .line 192
    invoke-direct {p1, p0}, Landroidx/fragment/app/d0;-><init>(Landroid/view/animation/Animation;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_f
    throw p2

    .line 197
    :cond_10
    return-object v2
.end method
