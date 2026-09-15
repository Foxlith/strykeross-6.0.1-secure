.class public abstract Landroidx/preference/PreferenceFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lw0/b;


# instance fields
.field public final a:Lw0/k;

.field public b:Ld1/h;

.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:I

.field public final e:Lf/j;

.field public final f:Landroidx/activity/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lw0/k;

    invoke-direct {v0, p0}, Lw0/k;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->a:Lw0/k;

    const v0, 0x7f0d00eb

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat;->d:I

    new-instance v0, Lf/j;

    invoke-direct {v0, p0}, Lf/j;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->e:Lf/j;

    new-instance v0, Landroidx/activity/d;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->f:Landroidx/activity/d;

    return-void
.end method


# virtual methods
.method public abstract d()V
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/TypedValue;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0403e7

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const p1, 0x7f140164

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ld1/h;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ld1/h;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->d()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Lw0/q;->g:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const v2, 0x7f0403e1

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat;->d:I

    .line 17
    .line 18
    invoke-virtual {p3, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat;->d:I

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v4, -0x1

    .line 31
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-virtual {p3, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p3, p0, Landroidx/preference/PreferenceFragmentCompat;->d:I

    .line 52
    .line 53
    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const p3, 0x102003f

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of v5, p3, Landroid/view/ViewGroup;

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    check-cast p3, Landroid/view/ViewGroup;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "android.hardware.type.automotive"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_0

    .line 85
    .line 86
    const v5, 0x7f0a04f8

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    if-eqz v5, :cond_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const v5, 0x7f0d00ed

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v5, p1

    .line 106
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lw0/o;

    .line 120
    .line 121
    invoke-direct {p1, v5}, Lw0/o;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/r1;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iput-object v5, p0, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .line 129
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->a:Lw0/k;

    .line 130
    .line 131
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/s0;)V

    .line 132
    .line 133
    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iput v3, p1, Lw0/k;->b:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    iput v3, p1, Lw0/k;->b:I

    .line 147
    .line 148
    :goto_1
    iput-object v1, p1, Lw0/k;->a:Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    iget-object v1, p1, Lw0/k;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 151
    .line 152
    iget-object v3, v1, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 155
    .line 156
    .line 157
    if-eq v2, v4, :cond_2

    .line 158
    .line 159
    iput v2, p1, Lw0/k;->b:I

    .line 160
    .line 161
    iget-object v1, v1, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 164
    .line 165
    .line 166
    :cond_2
    iput-boolean v0, p1, Lw0/k;->c:Z

    .line 167
    .line 168
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-nez p1, :cond_3

    .line 175
    .line 176
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->e:Lf/j;

    .line 182
    .line 183
    iget-object p3, p0, Landroidx/preference/PreferenceFragmentCompat;->f:Landroidx/activity/d;

    .line 184
    .line 185
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    return-object p2

    .line 189
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 190
    .line 191
    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    .line 192
    .line 193
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->e:Lf/j;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->f:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string p1, "android:preferences"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
