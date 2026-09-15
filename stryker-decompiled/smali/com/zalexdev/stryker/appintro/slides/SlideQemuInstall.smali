.class public Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic v:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroid/widget/LinearLayout;

.field public j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/view/View;

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Ln2/c;

.field public t:Lcom/google/android/material/button/MaterialButton;

.field public final u:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu2/d;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->u:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final d(Lo2/p;I)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr p2, v1

    .line 6
    iget-object v2, p1, Lo2/p;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    iget-object v3, p1, Lo2/p;->c:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iget-object v4, p1, Lo2/p;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/16 v6, 0x8

    .line 14
    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    if-eq p2, v7, :cond_1

    .line 19
    .line 20
    const/4 v7, 0x3

    .line 21
    if-eq p2, v7, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 24
    .line 25
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 26
    .line 27
    const v1, 0x7f060074

    .line 28
    .line 29
    .line 30
    invoke-static {p2, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 45
    .line 46
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    const v7, 0x7f060302

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    const v3, 0x7f0800d0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 68
    .line 69
    invoke-virtual {v2, p2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v4, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 77
    .line 78
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 79
    .line 80
    const v1, 0x7f060073

    .line 81
    .line 82
    .line 83
    invoke-static {p2, v1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0800c9

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 100
    .line 101
    invoke-virtual {v2, p2, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-object p2, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 106
    .line 107
    sget-object v7, Lx/g;->a:Ljava/lang/Object;

    .line 108
    .line 109
    const v7, 0x7f060316

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :goto_2
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lo2/p;->d:Landroid/widget/FrameLayout;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 143
    .line 144
    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/16 p2, 0x3c

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    .line 155
    .line 156
    :cond_3
    return-void

    .line 157
    :cond_4
    throw v0
.end method

.method public final e(Ln2/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/emoji2/text/m;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/emoji2/text/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->a:Landroidx/fragment/app/a0;

    new-instance v1, Lf/n0;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, v2}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .line 1
    const p3, 0x7f0d00c9

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->a:Landroidx/fragment/app/a0;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 20
    .line 21
    new-instance v1, Ll4/l;

    .line 22
    .line 23
    invoke-direct {v1, p3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->c:Ll4/l;

    .line 27
    .line 28
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->a:Landroidx/fragment/app/a0;

    .line 29
    .line 30
    const v1, 0x7f0a06a4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    const p3, 0x7f0a05ed

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->e:Landroid/widget/TextView;

    .line 51
    .line 52
    const p3, 0x7f0a05ec

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->f:Landroid/widget/TextView;

    .line 62
    .line 63
    const p3, 0x7f0a05e9

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Landroid/widget/ImageView;

    .line 71
    .line 72
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->g:Landroid/widget/ImageView;

    .line 73
    .line 74
    const p3, 0x7f0a05eb

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Landroid/widget/ProgressBar;

    .line 82
    .line 83
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->h:Landroid/widget/ProgressBar;

    .line 84
    .line 85
    const p3, 0x7f0a01af

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->i:Landroid/widget/LinearLayout;

    .line 95
    .line 96
    const p3, 0x7f0a05bb

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    check-cast p3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 104
    .line 105
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 106
    .line 107
    const p3, 0x7f0a01b0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    check-cast p3, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->k:Landroid/widget/TextView;

    .line 117
    .line 118
    const p3, 0x7f0a05de

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    check-cast p3, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->l:Landroid/widget/TextView;

    .line 128
    .line 129
    const p3, 0x7f0a05dd

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    check-cast p3, Landroid/widget/LinearLayout;

    .line 137
    .line 138
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->m:Landroid/widget/LinearLayout;

    .line 139
    .line 140
    const p3, 0x7f0a05dc

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->n:Landroid/view/View;

    .line 148
    .line 149
    const p3, 0x7f0a037b

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    check-cast p3, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->p:Landroid/widget/TextView;

    .line 159
    .line 160
    const p3, 0x7f0a0379

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->q:Landroid/view/View;

    .line 168
    .line 169
    const p3, 0x7f0a037c

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 179
    .line 180
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 181
    .line 182
    invoke-direct {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 186
    .line 187
    .line 188
    new-instance p3, Ln2/c;

    .line 189
    .line 190
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->b:Landroid/content/Context;

    .line 191
    .line 192
    invoke-direct {p3, v1}, Ln2/c;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->s:Ln2/c;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
    .line 199
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 200
    .line 201
    .line 202
    const p3, 0x7f0a0384

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    check-cast p3, Lcom/google/android/material/button/MaterialButton;

    .line 210
    .line 211
    iput-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->t:Lcom/google/android/material/button/MaterialButton;

    .line 212
    .line 213
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->m:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 216
    .line 217
    .line 218
    iget-object p3, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->u:Ljava/util/EnumMap;

    .line 219
    .line 220
    invoke-virtual {p3}, Ljava/util/EnumMap;->clear()V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Lu2/d;->values()[Lu2/d;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    array-length v2, v1

    .line 228
    move v3, v0

    .line 229
    :goto_0
    if-ge v3, v2, :cond_0

    .line 230
    .line 231
    aget-object v4, v1, v3

    .line 232
    .line 233
    const v5, 0x7f0d0074

    .line 234
    .line 235
    .line 236
    iget-object v6, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->m:Landroid/widget/LinearLayout;

    .line 237
    .line 238
    invoke-virtual {p1, v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    const v6, 0x7f0a05db

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Landroid/widget/TextView;

    .line 250
    .line 251
    const v7, 0x7f0a05d8

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Landroid/widget/ImageView;

    .line 259
    .line 260
    const v8, 0x7f0a05da

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    check-cast v8, Landroid/widget/ProgressBar;

    .line 268
    .line 269
    const v9, 0x7f0a05d9

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    check-cast v9, Landroid/widget/FrameLayout;

    .line 277
    .line 278
    iget-object v10, v4, Lu2/d;->a:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    new-instance v10, Lo2/p;

    .line 284
    .line 285
    invoke-direct {v10, v6, v7, v8, v9}, Lo2/p;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 286
    .line 287
    .line 288
    const/4 v6, 0x1

    .line 289
    invoke-virtual {p0, v10, v6}, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->d(Lo2/p;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    iget-object v4, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->m:Landroid/widget/LinearLayout;

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v3, v3, 0x1

    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/appintro/slides/SlideQemuInstall;->t:Lcom/google/android/material/button/MaterialButton;

    .line 304
    .line 305
    new-instance p3, Lcom/nambimobile/widgets/efab/a;

    .line 306
    .line 307
    const/16 v0, 0x9

    .line 308
    .line 309
    invoke-direct {p3, p0, v0}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    .line 314
    .line 315
    return-object p2
.end method
