.class public Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Lcom/google/android/material/card/MaterialCardView;

.field public f:Lcom/google/android/material/card/MaterialCardView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->g:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/4 v4, 0x4

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move v5, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v5, v4

    .line 19
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->h:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    move v3, v4

    .line 27
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->b:Landroid/content/Context;

    .line 31
    .line 32
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 33
    .line 34
    const v3, 0x7f060316

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->b:Landroid/content/Context;

    .line 42
    .line 43
    const v4, 0x7f06007b

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 51
    .line 52
    invoke-virtual {p0, v4, v0, v1, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e(Lcom/google/android/material/card/MaterialCardView;ZII)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->f:Lcom/google/android/material/card/MaterialCardView;

    .line 56
    .line 57
    xor-int/2addr v0, v2

    .line 58
    invoke-virtual {p0, v4, v0, v1, v3}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e(Lcom/google/android/material/card/MaterialCardView;ZII)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final e(Lcom/google/android/material/card/MaterialCardView;ZII)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    if-eqz p2, :cond_1

    const/4 p4, 0x2

    goto :goto_1

    :cond_1
    const/4 p4, 0x1

    :goto_1
    int-to-float p4, p4

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p2, 0x3f7851ec    # 0.97f

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0033

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    const p3, 0x7f0d00c7

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->a:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->b:Landroid/content/Context;

    .line 20
    .line 21
    new-instance p3, Ll4/l;

    .line 22
    .line 23
    invoke-direct {p3, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->c:Ll4/l;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->a:Landroidx/fragment/app/a0;

    .line 29
    .line 30
    const p3, 0x7f0a06a4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    const p2, 0x7f0a00fb

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 51
    .line 52
    const p2, 0x7f0a00fa

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->f:Lcom/google/android/material/card/MaterialCardView;

    .line 62
    .line 63
    const p2, 0x7f0a0110

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->g:Landroid/widget/ImageView;

    .line 73
    .line 74
    const p2, 0x7f0a010f

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Landroid/widget/ImageView;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->h:Landroid/widget/ImageView;

    .line 84
    .line 85
    const p2, 0x7f0a0526

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    const p3, 0x7f0a0384

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    :cond_0
    move v1, v0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    array-length v3, v1

    .line 109
    move v4, v0

    .line 110
    :goto_0
    if-ge v4, v3, :cond_0

    .line 111
    .line 112
    aget-object v5, v1, v4

    .line 113
    .line 114
    const-string v6, "arm64-v8a"

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_2

    .line 121
    .line 122
    move v1, v2

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :goto_1
    iput-boolean v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->j:Z

    .line 128
    .line 129
    const/4 v3, 0x2

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    iput v3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 133
    .line 134
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 135
    .line 136
    new-instance v1, Lo2/j;

    .line 137
    .line 138
    invoke-direct {v1, p0, v0}, Lo2/j;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 149
    .line 150
    const/high16 v0, 0x3f000000    # 0.5f

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 153
    .line 154
    .line 155
    iput v2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->i:I

    .line 156
    .line 157
    :goto_2
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->f:Lcom/google/android/material/card/MaterialCardView;

    .line 158
    .line 159
    new-instance v0, Lo2/j;

    .line 160
    .line 161
    invoke-direct {v0, p0, v2}, Lo2/j;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;->d()V

    .line 168
    .line 169
    .line 170
    new-instance p2, Lo2/j;

    .line 171
    .line 172
    invoke-direct {p2, p0, v3}, Lo2/j;-><init>(Lcom/zalexdev/stryker/appintro/slides/SlideEngineSelect;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    return-object p1
.end method
