.class public Lcom/zalexdev/stryker/arsenal/ArsenalFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Landroidx/fragment/app/x0;

.field public b:Landroidx/fragment/app/a0;

.field public c:Landroid/content/Context;

.field public d:Ll4/l;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/LinearLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->a:Landroidx/fragment/app/x0;

    const-string v0, "hub"

    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d:Ll4/l;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->b:Landroidx/fragment/app/a0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ll4/l;->A()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ly/n;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d:Ll4/l;

    .line 4
    .line 5
    const-string v1, "hub"

    .line 6
    .line 7
    const-string v2, "db"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-object v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v3, v1

    .line 20
    :goto_0
    const-string v4, "arsenal_last_tab"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v3}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance v0, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;-><init>()V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/u0;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v2}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/16 v3, 0x1003

    .line 51
    .line 52
    iput v3, v2, Landroidx/fragment/app/e1;->f:I

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "arsenal_tab_"

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const v3, 0x7f0a0096

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0, p1, v3}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {v2, p1}, Landroidx/fragment/app/a;->h(Z)I

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->l:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x1

    .line 85
    const v2, 0x7f060316

    .line 86
    .line 87
    .line 88
    const v3, 0x7f0602f2

    .line 89
    .line 90
    .line 91
    const v4, 0x7f08008d

    .line 92
    .line 93
    .line 94
    const v5, 0x7f08008b

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    const v7, 0x7f060074

    .line 99
    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e:Landroid/widget/LinearLayout;

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->f:Landroid/widget/LinearLayout;

    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->g:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 116
    .line 117
    sget-object v5, Lx/g;->a:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {v4, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->h:Landroid/widget/TextView;

    .line 127
    .line 128
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v3, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->i:Landroid/widget/ImageView;

    .line 138
    .line 139
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v3, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->j:Landroid/widget/ImageView;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 151
    .line 152
    invoke-static {v2, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->g:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->h:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v0, v6, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e:Landroid/widget/LinearLayout;

    .line 171
    .line 172
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->f:Landroid/widget/LinearLayout;

    .line 176
    .line 177
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->g:Landroid/widget/TextView;

    .line 181
    .line 182
    iget-object v4, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 183
    .line 184
    sget-object v5, Lx/g;->a:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {v4, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->h:Landroid/widget/TextView;

    .line 194
    .line 195
    iget-object v4, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 196
    .line 197
    invoke-static {v4, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->i:Landroid/widget/ImageView;

    .line 205
    .line 206
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 207
    .line 208
    invoke-static {v3, v7}, Lx/d;->a(Landroid/content/Context;I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->j:Landroid/widget/ImageView;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 218
    .line 219
    invoke-static {v3, v2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->g:Landroid/widget/TextView;

    .line 227
    .line 228
    invoke-virtual {v0, v6, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->h:Landroid/widget/TextView;

    .line 232
    .line 233
    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 234
    .line 235
    .line 236
    :goto_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0059

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->a:Landroidx/fragment/app/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 7
    .line 8
    const-string v1, "StrykerOSS"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->b:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->c:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ll4/l;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d:Ll4/l;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->a:Landroidx/fragment/app/x0;

    .line 21
    .line 22
    const v0, 0x7f1300bf

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    const p2, 0x7f0a0095

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->k:Landroid/widget/TextView;

    .line 47
    .line 48
    const p2, 0x7f0a009a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    const p2, 0x7f0a0097

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->f:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    const p2, 0x7f0a009c

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->g:Landroid/widget/TextView;

    .line 80
    .line 81
    const p2, 0x7f0a0099

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    check-cast p2, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->h:Landroid/widget/TextView;

    .line 91
    .line 92
    const p2, 0x7f0a009b

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/widget/ImageView;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->i:Landroid/widget/ImageView;

    .line 102
    .line 103
    const p2, 0x7f0a0098

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/ImageView;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->j:Landroid/widget/ImageView;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    new-instance p2, Lp2/m;

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-direct {p2, p0, v0}, Lp2/m;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalFragment;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->f:Landroid/widget/LinearLayout;

    .line 126
    .line 127
    new-instance p2, Lp2/m;

    .line 128
    .line 129
    const/4 v0, 0x1

    .line 130
    invoke-direct {p2, p0, v0}, Lp2/m;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalFragment;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string p2, "hub"

    .line 141
    .line 142
    if-eqz p1, :cond_0

    .line 143
    .line 144
    const-string v0, "arsenal_start_tab"

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d:Ll4/l;

    .line 158
    .line 159
    const-string v0, "arsenal_last_tab"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :goto_0
    const-string v0, "db"

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    move-object p2, p1

    .line 175
    :goto_1
    invoke-virtual {p0, p2}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->e(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    .line 179
    .line 180
    .line 181
    return-void
.end method
