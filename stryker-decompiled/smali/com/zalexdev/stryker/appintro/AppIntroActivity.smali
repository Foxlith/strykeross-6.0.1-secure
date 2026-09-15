.class public Lcom/zalexdev/stryker/appintro/AppIntroActivity;
.super Landroidx/fragment/app/a0;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroidx/viewpager2/widget/ViewPager2;

.field public c:Lm2/b;

.field public d:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public e:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroidx/fragment/app/a0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lm2/a;->a:Lm2/a;

    sget-object v2, Lm2/a;->b:Lm2/a;

    sget-object v3, Lm2/a;->c:Lm2/a;

    sget-object v4, Lm2/a;->d:Lm2/a;

    sget-object v5, Lm2/a;->e:Lm2/a;

    sget-object v6, Lm2/a;->g:Lm2/a;

    filled-new-array/range {v1 .. v6}, [Lm2/a;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final e(I)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lm2/a;->c:Lm2/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p1, v2, :cond_1

    sget-object p1, Lm2/a;->f:Lm2/a;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    sget-object p1, Lm2/a;->d:Lm2/a;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lm2/a;->e:Lm2/a;

    goto :goto_1

    :goto_2
    sget-object p1, Lm2/a;->g:Lm2/a;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->c:Lm2/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->f(I)V

    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->d:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->d:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setProgressCompat(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->e:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1302e6

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d001d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/activity/h;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a06a4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 20
    .line 21
    const p1, 0x7f0a02eb

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->d:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 31
    .line 32
    const p1, 0x7f0a02ec

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 50
    .line 51
    new-instance v1, Landroidx/fragment/app/x0;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v1, v2}, Landroidx/fragment/app/x0;-><init>(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Ll1/n;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Lm2/b;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p1, p0, v1}, Lm2/b;-><init>(Landroidx/fragment/app/a0;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->c:Lm2/b;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 75
    .line 76
    new-instance v1, Landroidx/viewpager2/adapter/b;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v1, p0, v2}, Landroidx/viewpager2/adapter/b;-><init>(Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->c:Landroidx/viewpager2/adapter/b;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/viewpager2/adapter/b;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    const p1, 0x7f0a0385

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 109
    .line 110
    and-int/lit8 v1, v1, 0x30

    .line 111
    .line 112
    const/16 v2, 0x20

    .line 113
    .line 114
    if-ne v1, v2, :cond_0

    .line 115
    .line 116
    const v1, 0x7f080112

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    const v1, 0x7f0800e4

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    .line 129
    .line 130
    const v1, 0x3f59999a    # 0.85f

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    .line 145
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const v2, 0x7f0b0031

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    int-to-long v1, v1

    .line 169
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/appintro/AppIntroActivity;->f(I)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
