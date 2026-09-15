.class public final synthetic Lv3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lv3/g;->a:I

    iput-object p1, p0, Lv3/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lv3/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv3/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lv3/g;->a:I

    iput-object p1, p0, Lv3/g;->c:Ljava/lang/Object;

    iput-object p2, p0, Lv3/g;->d:Ljava/lang/Object;

    iput-object p3, p0, Lv3/g;->b:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerInline;

    .line 5
    .line 6
    iget-object v0, p0, Lv3/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v6, v0

    .line 9
    check-cast v6, Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lv3/g;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerInline;->a:Ll4/l;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "ip link set "

    .line 20
    .line 21
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, " down"

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lv3/f;

    .line 40
    .line 41
    const-string v2, "macchanger "

    .line 42
    .line 43
    const-string v4, " -m "

    .line 44
    .line 45
    invoke-static {v2, v6, v4, v0}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x1

    .line 50
    const/4 v7, 0x2

    .line 51
    move-object v2, v3

    .line 52
    invoke-direct/range {v1 .. v7}, Lv3/f;-><init>(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw3/c;

    .line 4
    .line 5
    iget-object v1, p0, Lv3/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lz3/f;

    .line 8
    .line 9
    iget-object v2, p0, Lv3/g;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Lw3/c;->b:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    check-cast v0, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    sget v3, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->A:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/metasploit/ExploitLaucnher;->e(Lz3/f;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lv3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 4
    .line 5
    iget-object v1, p0, Lv3/g;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ly3/a;

    .line 8
    .line 9
    iget-object v2, p0, Lv3/g;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lw3/g;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->q:Ljava/util/EnumMap;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lw3/h;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->e(Lw3/h;Lw3/g;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 4
    .line 5
    iget-object v1, p0, Lv3/g;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ln2/e;

    .line 8
    .line 9
    iget-object v2, p0, Lv3/g;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->p:Ln2/c;

    .line 14
    .line 15
    new-instance v4, Ln2/f;

    .line 16
    .line 17
    invoke-direct {v4, v1, v2}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ln2/c;->a(Ln2/f;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;->p:Ln2/c;

    .line 26
    .line 27
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lv3/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 4
    .line 5
    iget-object v1, p0, Lv3/g;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lv3/g;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_8

    .line 20
    .line 21
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    .line 22
    .line 23
    if-eqz v3, :cond_8

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->j:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sub-int/2addr v4, v5

    .line 44
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->k:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->l:Landroid/widget/TextView;

    .line 65
    .line 66
    const-string v3, "0"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Lcom/zalexdev/stryker/metasploit/Metasploit;->f(Z)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lx3/b;

    .line 76
    .line 77
    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->b:Landroid/content/Context;

    .line 78
    .line 79
    invoke-direct {v3}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    iput v5, v3, Lx3/b;->d:I

    .line 84
    .line 85
    const-string v6, ""

    .line 86
    .line 87
    iput-object v6, v3, Lx3/b;->e:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v4, v3, Lx3/b;->c:Landroid/content/Context;

    .line 90
    .line 91
    iput-object v1, v3, Lx3/b;->a:Ljava/util/ArrayList;

    .line 92
    .line 93
    new-instance v7, Ll4/l;

    .line 94
    .line 95
    invoke-direct {v7, v4}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .line 102
    .line 103
    iput-object v4, v3, Lx3/b;->b:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/k0;->setHasStableIds(Z)V

    .line 106
    .line 107
    .line 108
    iput-object v3, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 109
    .line 110
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->z:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 116
    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->z:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 123
    .line 124
    const/16 v3, 0x8

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    :cond_1
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->A:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 130
    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->d:Lz3/d;

    .line 137
    .line 138
    iget-boolean v1, v1, Lz3/d;->i:Z

    .line 139
    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    sget-object v1, Lz3/f;->c:Lz3/f;

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v0, v1, v3}, Lcom/zalexdev/stryker/metasploit/Metasploit;->e(Lz3/f;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 149
    .line 150
    iget-object v1, v1, Ll4/l;->b:Landroid/content/SharedPreferences;

    .line 151
    .line 152
    const-string v3, "msf_filter_chip"

    .line 153
    .line 154
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    const v2, 0x7f0a03df

    .line 159
    .line 160
    .line 161
    if-ne v1, v2, :cond_4

    .line 162
    .line 163
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 164
    .line 165
    const/4 v2, 0x2

    .line 166
    :goto_0
    invoke-virtual {v1, v2}, Lx3/b;->b(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    const v2, 0x7f0a03de

    .line 171
    .line 172
    .line 173
    if-ne v1, v2, :cond_5

    .line 174
    .line 175
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 176
    .line 177
    const/4 v2, 0x3

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 180
    .line 181
    invoke-virtual {v1, v5}, Lx3/b;->b(I)V

    .line 182
    .line 183
    .line 184
    :goto_1
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 193
    .line 194
    iget-object v2, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->s:Lcom/google/android/material/textfield/TextInputEditText;

    .line 195
    .line 196
    invoke-virtual {v2}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-nez v2, :cond_6

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    :goto_2
    iput-object v6, v1, Lx3/b;->e:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v1}, Lx3/b;->a()V

    .line 221
    .line 222
    .line 223
    :cond_7
    invoke-virtual {v0}, Lcom/zalexdev/stryker/metasploit/Metasploit;->g()V

    .line 224
    .line 225
    .line 226
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    move-object/from16 v1, p0

    iget v0, v1, Lv3/g;->a:I

    const v2, 0x1090003

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x2

    const-wide/16 v6, 0x4e20

    const v8, 0x7f130724

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-static {v0, v2, v3}, Lcom/zalexdev/stryker/wpair/WpairFragment;->y(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    invoke-static {v2, v3, v0}, Lcom/zalexdev/stryker/wpair/WpairFragment;->D(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;Lcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/wpair/VulnerabilityTester$ResultCallback;

    invoke-static {v0, v2, v3}, Lcom/zalexdev/stryker/wpair/VulnerabilityTester;->c(Lcom/zalexdev/stryker/wpair/VulnerabilityTester;Ljava/lang/String;Lcom/zalexdev/stryker/wpair/VulnerabilityTester$ResultCallback;)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    invoke-static {v0, v2, v3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->b(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void

    :pswitch_3
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wifi/Wifi;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget v4, Lcom/zalexdev/stryker/wifi/Wifi;->K:I

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1
    invoke-virtual {v0, v8, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/wifi/Wifi;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Landroid/widget/TextView;

    .line 2
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->q:Ll4/l;

    const-string v4, "Mdk4 stopped"

    invoke-virtual {v0, v4}, Ll4/l;->r0(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "Attack stopped, failed to start monitor mode"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lo4/n;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v8, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v8, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v11, v6

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v11

    iget-object v7, v0, Ll4/h;->a:Landroid/app/Activity;

    if-gez v6, :cond_1

    iget-object v6, v0, Lo4/n;->n:Lo4/u;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lo4/u;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lo4/k;

    invoke-direct {v0, v8, v5}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    new-instance v2, Lo4/m;

    invoke-direct {v2, v0, v10}, Lo4/m;-><init>(Ll4/h;I)V

    invoke-virtual {v7, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :catch_0
    :goto_1
    return-void

    :pswitch_6
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lo4/l;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    iget-object v5, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v5, Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v6

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v8

    iget-object v7, v0, Ll4/c;->a:Landroid/app/Activity;

    if-gez v6, :cond_3

    iget-object v6, v0, Lo4/l;->B:Lo4/u;

    invoke-virtual {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lo4/u;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lo4/k;

    invoke-direct {v0, v5, v11}, Lo4/k;-><init>(Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/activity/b;

    const/16 v3, 0x1d

    invoke-direct {v2, v0, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    return-void

    :pswitch_7
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lo4/u;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 7
    sget-object v4, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lo4/u;->b:Landroid/content/Context;

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_8
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/vnc/VNCService;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 9
    sget v4, Lcom/zalexdev/stryker/vnc/VNCService;->e:I

    .line 10
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCService;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.zalexdev.stryker.vnc.action.START"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v4, v0, Lcom/zalexdev/stryker/vnc/VNCService;->c:Ll4/l;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mkdir -p /tmp; setsid nohup vncserver-start -p "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -r "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > /tmp/vncserver-start.log 2>&1 < /dev/null &"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/vnc/VNCService;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/vnc/VNCService;->b(Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_9
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/vnc/VNCFragment;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 13
    sget v4, Lcom/zalexdev/stryker/vnc/VNCFragment;->Q:I

    .line 14
    invoke-virtual {v0}, Lcom/zalexdev/stryker/vnc/VNCFragment;->f()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    iget-object v4, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->O:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->O:Ln2/c;

    .line 15
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .line 17
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_5
    return-void

    :pswitch_a
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/vnc/VNCFragment;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Ln4/a;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lm4/f;

    .line 18
    iget-object v4, v0, Lcom/zalexdev/stryker/vnc/VNCFragment;->P:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm4/h;

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/vnc/VNCFragment;->d(Lm4/h;Lm4/f;)V

    :cond_6
    return-void

    :pswitch_b
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iget-object v4, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 19
    iget-object v5, v0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->c:Landroidx/fragment/app/a0;

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v0, v0, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->b:Landroid/content/Context;

    invoke-direct {v5, v0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_8
    :goto_6
    return-void

    :pswitch_c
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lt2/m;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iget-object v4, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v0, v0, Lt2/m;->c:Landroid/content/Context;

    invoke-direct {v5, v0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :pswitch_d
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lv1/t;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Lf/n;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 22
    iget-object v4, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    sget v5, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d(Lf/n;)V

    .line 24
    iget-object v0, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    const v2, 0x7f1306a9

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 25
    iget-object v3, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_9

    invoke-virtual {v3, v0, v2}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_9
    return-void

    :pswitch_e
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lv1/t;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lf/n;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lu2/o;

    .line 26
    iget-object v4, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    sget v5, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d(Lf/n;)V

    .line 28
    iget-object v2, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v2, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 29
    invoke-virtual {v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    .line 30
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v4, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 31
    iget-object v4, v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    .line 32
    invoke-direct {v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lv1/t;->d:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    iget v4, v3, Lu2/o;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Lu2/o;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f1306a8

    invoke-virtual {v0, v5, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v2, v3, Lu2/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void

    :pswitch_f
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lf/n;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lf4/i;

    .line 33
    sget v4, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d(Lf/n;)V

    iget-boolean v2, v3, Lf4/i;->a:Z

    if-eqz v2, :cond_a

    const v2, 0x7f1306a3

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    iget-object v2, v3, Lf4/i;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1306a5

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    :goto_7
    iget-object v3, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    if-eqz v3, :cond_b

    iget-object v4, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v4, :cond_b

    invoke-virtual {v3, v4, v2}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 36
    :cond_b
    invoke-virtual {v0}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->h()V

    return-void

    :pswitch_10
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lf/n;

    .line 37
    iget-object v4, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->d:Lu2/h;

    iget-object v7, v0, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->c:Ll4/l;

    new-instance v8, Lv1/t;

    invoke-direct {v8, v0, v2, v3}, Lv1/t;-><init>(Lcom/zalexdev/stryker/settings/VmSettingsFragment;Landroid/widget/TextView;Lf/n;)V

    const-string v0, "boot failed"

    .line 38
    invoke-virtual {v6}, Lu2/h;->m()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v0, "VM is not installed"

    invoke-virtual {v8, v0}, Lv1/t;->p(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 39
    :cond_c
    iget-object v2, v7, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v3, "rootless_cpus"

    if-eqz v2, :cond_d

    .line 40
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v11

    goto :goto_8

    :cond_d
    move v2, v10

    .line 41
    :goto_8
    iget-object v12, v7, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v12, v3, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 42
    iget-object v12, v7, Ll4/l;->b:Landroid/content/SharedPreferences;

    const-string v13, "rootless_ram"

    if-eqz v12, :cond_e

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    move/from16 v20, v11

    goto :goto_9

    :cond_e
    move/from16 v20, v10

    .line 43
    :goto_9
    iget-object v12, v7, Ll4/l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v12, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 44
    iput-boolean v10, v6, Lu2/h;->l:Z

    .line 45
    :try_start_2
    invoke-static {}, Li5/a;->n0()Z

    invoke-static {v4}, Li5/a;->G0(Landroid/content/Context;)I

    move-result v4

    invoke-static {}, Li5/a;->A()I

    move-result v12

    invoke-static {v12}, Li5/a;->k(I)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x57e40

    add-long v14, v14, v16

    invoke-virtual {v7, v4, v13}, Ll4/l;->c0(ILjava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v17, 0x0

    const-wide/16 v22, 0x0

    move/from16 v28, v2

    move-wide/from16 v24, v17

    move-wide/from16 v26, v22

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v10, :cond_15

    :try_start_3
    invoke-static {}, Li5/a;->l()V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    sub-long v29, v14, v29

    const-wide/16 v31, 0x61a8

    cmp-long v23, v29, v31

    if-gez v23, :cond_f

    new-instance v1, Lu2/p;

    const-string v2, "timed out"

    move-object/from16 v35, v12

    move-object/from16 v23, v13

    const-wide/16 v12, -0x1

    invoke-direct {v1, v9, v2, v12, v13}, Lu2/p;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move-object/from16 v36, v3

    move/from16 v37, v4

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_f
    move-object/from16 v35, v12

    move-object/from16 v23, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Booting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vCPU \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MB\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lv1/t;->q(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v3}, Ll4/l;->c0(ILjava/lang/String;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {v6, v1, v2}, Lu2/h;->B(J)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lu2/h;->y(Lu2/g;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, " vCPU: "

    if-nez v2, :cond_10

    :try_start_4
    new-instance v2, Lu2/p;

    const-wide/16 v12, -0x1

    invoke-direct {v2, v9, v0, v12, v13}, Lu2/p;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lv1/t;->q(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    invoke-static {}, Li5/a;->l()V

    cmp-long v2, v24, v17

    if-gtz v2, :cond_12

    const-string v2, "Calibrating guest shell\u2026"

    invoke-virtual {v8, v2}, Lv1/t;->q(Ljava/lang/String;)V

    invoke-static {v14, v15}, Li5/a;->i(J)Lu2/m;

    move-result-object v2

    iget-object v12, v2, Lu2/m;->c:Ljava/lang/String;

    if-eqz v12, :cond_11

    new-instance v13, Lu2/p;

    move-object/from16 v36, v3

    move/from16 v37, v4

    const-wide/16 v3, -0x1

    invoke-direct {v13, v9, v12, v3, v4}, Lu2/p;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lu2/m;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lv1/t;->q(Ljava/lang/String;)V

    :goto_c
    move-object/from16 v38, v0

    move/from16 v22, v10

    const/4 v0, 0x2

    goto/16 :goto_11

    :cond_11
    move-object/from16 v36, v3

    move/from16 v37, v4

    iget-wide v3, v2, Lu2/m;->a:J

    iget-wide v1, v2, Lu2/m;->b:D

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Calibrated: %,d ops \u00b7 %,d ops/s"

    move-object/from16 v38, v0

    move/from16 v22, v10

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v16, 0x0

    aput-object v24, v10, v16

    move-wide/from16 v24, v3

    double-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v10, v4

    invoke-static {v12, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lv1/t;->q(Ljava/lang/String;)V

    move-wide/from16 v26, v1

    goto :goto_d

    :cond_12
    move-object/from16 v38, v0

    move-object/from16 v36, v3

    move/from16 v37, v4

    move/from16 v22, v10

    const/4 v0, 0x2

    :goto_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x15f90

    add-long/2addr v1, v3

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v9, v1, v2}, Li5/a;->a0(IJ)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Testing "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " vCPU on "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    if-ne v3, v10, :cond_13

    const-string v10, " guest core\u2026"

    goto :goto_e

    :cond_13
    const-string v10, " guest cores\u2026"

    :goto_e
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lv1/t;->q(Ljava/lang/String;)V

    move/from16 v29, v9

    move/from16 v30, v3

    move-wide/from16 v31, v24

    move-wide/from16 v33, v1

    invoke-static/range {v29 .. v34}, Li5/a;->s0(IIJJ)Lu2/p;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vCPU \u2192 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lu2/p;->a()Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v1, Lu2/p;->b:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lu2/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :goto_10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lv1/t;->q(Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v35

    move-object/from16 v3, v36

    move/from16 v4, v37

    move-object/from16 v0, v38

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_15
    move-object/from16 v36, v3

    move/from16 v37, v4

    move-object/from16 v23, v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_16
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu2/p;

    invoke-virtual {v2}, Lu2/p;->a()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_12

    :cond_17
    if-eqz v1, :cond_18

    iget-wide v3, v2, Lu2/p;->b:J

    iget-wide v9, v1, Lu2/p;->b:J

    cmp-long v3, v3, v9

    if-gez v3, :cond_16

    :cond_18
    move-object v1, v2

    goto :goto_12

    :cond_19
    if-nez v1, :cond_1a

    move-object v12, v6

    move-object v13, v7

    move/from16 v14, v28

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Li5/a;->M0(Lu2/h;Ll4/l;ZIZILv1/t;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no profile completed \u2014 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Li5/a;->E0(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lv1/t;->p(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x1

    .line 46
    :goto_13
    iput-boolean v1, v6, Lu2/h;->l:Z

    goto/16 :goto_17

    .line 47
    :cond_1a
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying best profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lu2/p;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vCPU\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lv1/t;->q(Ljava/lang/String;)V

    iget v0, v1, Lu2/p;->a:I

    move-object/from16 v2, v36

    invoke-virtual {v7, v0, v2}, Ll4/l;->c0(ILjava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v2, v37

    invoke-virtual {v7, v2, v0}, Ll4/l;->c0(ILjava/lang/String;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v6, v3, v4}, Lu2/h;->B(J)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lu2/h;->y(Lu2/g;)Z

    new-instance v0, Lu2/o;

    iget v1, v1, Lu2/p;->a:I

    move-object/from16 v22, v11

    move/from16 v23, v1

    invoke-static/range {v22 .. v27}, Li5/a;->b1(Ljava/util/ArrayList;IJD)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v11, v3}, Lu2/o;-><init>(IILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lv1/t;->o(Lu2/o;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x1

    goto :goto_13

    :catch_2
    move/from16 v28, v2

    goto :goto_16

    :catchall_1
    move-exception v0

    move/from16 v28, v2

    :goto_14
    move-object v12, v6

    move-object v13, v7

    move/from16 v14, v28

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v8

    :try_start_6
    invoke-static/range {v12 .. v18}, Li5/a;->M0(Lu2/h;Ll4/l;ZIZILv1/t;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    goto :goto_18

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v8, v0}, Lv1/t;->p(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_13

    :catch_3
    :goto_16
    move-object v12, v6

    move-object v13, v7

    move/from16 v14, v28

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Li5/a;->M0(Lu2/h;Ll4/l;ZIZILv1/t;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "cancelled \u2014 previous profile restored"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_15

    :goto_17
    return-void

    .line 48
    :goto_18
    iput-boolean v1, v6, Lu2/h;->l:Z

    .line 49
    throw v0

    :pswitch_11
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 50
    sget v4, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->g:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    :goto_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v10, v6, :cond_1c

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_1c
    iget-object v3, v0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f130163

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v4, v0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f130538

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v4, Lcom/stryker/terminal/ui/customize/b;

    const/4 v6, 0x6

    invoke-direct {v4, v0, v5, v2, v6}, Lcom/stryker/terminal/ui/customize/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void

    :pswitch_12
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Lf4/d;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Landroid/content/SharedPreferences;

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_1a

    :cond_1d
    iget-object v4, v2, Lf4/d;->b:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130503

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lf4/d;->g:Ljava/lang/String;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "\n\n"

    .line 53
    invoke-static {v4, v6, v5}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    :cond_1e
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f130506

    invoke-virtual {v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lf4/d;->f:Z

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    new-instance v6, Lcom/stryker/terminal/ui/customize/a;

    const/16 v7, 0xf

    invoke-direct {v6, v0, v2, v7}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, 0x7f130507

    invoke-virtual {v4, v0, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    if-nez v5, :cond_1f

    const v4, 0x7f130504

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v4, Lcom/stryker/terminal/ui/customize/a;

    const/16 v5, 0x10

    invoke-direct {v4, v3, v2, v5}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, 0x7f130505

    invoke-virtual {v0, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    :cond_1f
    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    :cond_20
    :goto_1a
    return-void

    :pswitch_13
    move-object v5, v9

    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Lv/f;

    .line 55
    invoke-static {v0}, Li5/a;->N(Landroid/content/Context;)Lf4/g;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v0, Lf4/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Le0/b;

    const/16 v6, 0xb

    invoke-direct {v0, v6}, Le0/b;-><init>(I)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zalexdev/stryker/custom/News;

    iget-object v7, v6, Lcom/zalexdev/stryker/custom/News;->imageUrl:Ljava/lang/String;

    if-eqz v7, :cond_21

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    iget-object v7, v6, Lcom/zalexdev/stryker/custom/News;->imageUrl:Ljava/lang/String;

    const/high16 v8, 0x400000

    .line 56
    :try_start_7
    invoke-static {v8, v7}, Lf4/a;->b(ILjava/lang/String;)[B

    move-result-object v7

    array-length v8, v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v9, 0x0

    :try_start_8
    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1c

    :catch_4
    const/4 v9, 0x0

    :catch_5
    move-object v7, v5

    .line 57
    :goto_1c
    iput-object v7, v6, Lcom/zalexdev/stryker/custom/News;->image:Landroid/graphics/Bitmap;

    goto :goto_1b

    :cond_21
    const/4 v9, 0x0

    goto :goto_1b

    :cond_22
    invoke-static {}, Li5/a;->y()Ljava/util/ArrayList;

    move-result-object v4

    :cond_23
    new-instance v0, Ld4/d;

    const/4 v5, 0x1

    invoke-direct {v0, v3, v4, v5}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_14
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Ln2/e;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 58
    iget-object v4, v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->p:Ln2/c;

    new-instance v5, Ln2/f;

    invoke-direct {v5, v2, v3}, Ln2/f;-><init>(Ln2/e;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ln2/c;->a(Ln2/f;)V

    iget-object v2, v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->n:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->p:Ln2/c;

    .line 59
    iget-object v0, v0, Ln2/c;->b:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 61
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :pswitch_15
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    iget-object v2, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v2, Le4/a;

    iget-object v3, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v3, Ld4/f;

    .line 62
    iget-object v4, v0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->q:Ljava/util/EnumMap;

    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld4/g;

    if-nez v2, :cond_24

    goto :goto_1d

    :cond_24
    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;->d(Ld4/g;Ld4/f;)V

    :goto_1d
    return-void

    :pswitch_16
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lw3/m;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/regex/Matcher;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 63
    iget-object v0, v0, Ll4/c;->d:Ll4/l;

    const-string v4, "mkdir -p /sdcard/Stryker/payloads"

    invoke-virtual {v0, v4}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "/+"

    const-string v6, "/"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_25

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    :cond_25
    const-string v4, ""

    .line 64
    :goto_1e
    invoke-static {v3, v4}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cp \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' \'/sdcard/Stryker/payloads/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    return-void

    :pswitch_17
    iget-object v0, v1, Lv3/g;->c:Ljava/lang/Object;

    check-cast v0, Lw3/c;

    iget-object v2, v1, Lv3/g;->d:Ljava/lang/Object;

    check-cast v2, Lz3/f;

    iget-object v3, v1, Lv3/g;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 66
    iget-object v0, v0, Lw3/c;->b:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/zalexdev/stryker/metasploit/Metasploit;

    iget-object v4, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->a:Landroidx/fragment/app/a0;

    if-eqz v4, :cond_26

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/zalexdev/stryker/metasploit/Metasploit;->e(Lz3/f;Ljava/lang/String;)V

    :cond_26
    return-void

    .line 68
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lv3/g;->e()V

    return-void

    :pswitch_19
    invoke-direct/range {p0 .. p0}, Lv3/g;->d()V

    return-void

    :pswitch_1a
    invoke-direct/range {p0 .. p0}, Lv3/g;->c()V

    return-void

    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lv3/g;->b()V

    return-void

    :pswitch_1c
    invoke-direct/range {p0 .. p0}, Lv3/g;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
