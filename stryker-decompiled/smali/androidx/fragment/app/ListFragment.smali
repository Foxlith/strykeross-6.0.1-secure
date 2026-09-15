.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroidx/fragment/app/b0;

.field public final c:Landroidx/fragment/app/p1;

.field public d:Landroid/widget/ListAdapter;

.field public e:Landroid/widget/ListView;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->a:Landroid/os/Handler;

    new-instance v0, Landroidx/fragment/app/b0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->b:Landroidx/fragment/app/b0;

    new-instance v0, Landroidx/fragment/app/p1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/p1;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->c:Landroidx/fragment/app/p1;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_9

    .line 11
    .line 12
    instance-of v1, v0, Landroid/widget/ListView;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/widget/ListView;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const v1, 0xff0001

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const v1, 0x1020004

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->f:Landroid/view/View;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v2, 0x8

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const v1, 0xff0002

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    .line 55
    .line 56
    const v1, 0xff0003

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    .line 64
    .line 65
    const v1, 0x102000a

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    instance-of v1, v0, Landroid/widget/ListView;

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_4
    check-cast v0, Landroid/widget/ListView;

    .line 95
    .line 96
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 97
    .line 98
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->f:Landroid/view/View;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->i:Z

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 109
    .line 110
    iget-object v2, p0, Landroidx/fragment/app/ListFragment;->c:Landroidx/fragment/app/p1;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->d:Landroid/widget/ListAdapter;

    .line 116
    .line 117
    const/4 v2, 0x0

    .line 118
    if-eqz v1, :cond_7

    .line 119
    .line 120
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->d:Landroid/widget/ListAdapter;

    .line 121
    .line 122
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    .line 123
    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->i:Z

    .line 130
    .line 131
    if-nez v1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_6

    .line 142
    .line 143
    move v2, v0

    .line 144
    :cond_6
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/ListFragment;->e(ZZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/ListFragment;->e(ZZ)V

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->a:Landroid/os/Handler;

    .line 156
    .line 157
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->b:Landroidx/fragment/app/b0;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 164
    .line 165
    const-string v1, "Content view not yet created"

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

.method public final e(ZZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->d()V

    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->i:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->i:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t be used with a custom content view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0002

    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v1, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xff0003

    invoke-virtual {p3, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v3, 0xff0001

    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x102000a

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->b:Landroidx/fragment/app/b0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/ListFragment;->i:Z

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->h:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->g:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->f:Landroid/view/View;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->d()V

    return-void
.end method
