.class public Lcom/zalexdev/stryker/handshakes/HandshakeStorage;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public a:Ll4/l;

.field public b:Landroid/content/Context;

.field public c:Landroidx/fragment/app/a0;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Lcom/google/android/material/card/MaterialCardView;

.field public f:Lcom/google/android/material/card/MaterialCardView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public l:Lb3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "((\\w{2}:){5}\\w{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->a:Ll4/l;

    invoke-virtual {v1}, Ll4/l;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/captured"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->a:Ll4/l;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ll4/l;->E(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->f:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->g:Landroid/widget/TextView;

    .line 38
    .line 39
    const v1, 0x7f13027e

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->h:Landroid/widget/TextView;

    .line 46
    .line 47
    const-string v1, "0"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->i:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->j:Landroid/widget/TextView;

    .line 58
    .line 59
    const-string v1, "0 KB"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->f:Lcom/google/android/material/card/MaterialCardView;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lb3/g;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->b:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->c:Landroidx/fragment/app/a0;

    .line 80
    .line 81
    invoke-direct {v1}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 82
    .line 83
    .line 84
    iput v2, v1, Lb3/g;->f:I

    .line 85
    .line 86
    iput-object v3, v1, Lb3/g;->b:Landroid/content/Context;

    .line 87
    .line 88
    iput-object v0, v1, Lb3/g;->a:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v4, v1, Lb3/g;->c:Landroid/app/Activity;

    .line 91
    .line 92
    new-instance v0, Ll4/l;

    .line 93
    .line 94
    invoke-direct {v0, v3}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, v1, Lb3/g;->d:Ll4/l;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->l:Lb3/g;

    .line 100
    .line 101
    new-instance v0, Landroidx/activity/b;

    .line 102
    .line 103
    const/16 v2, 0x12

    .line 104
    .line 105
    invoke-direct {v0, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    iput-object v0, v1, Lb3/g;->e:Ljava/lang/Runnable;

    .line 109
    .line 110
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->f()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final f()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->l:Lb3/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lb3/g;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->l:Lb3/g;

    .line 13
    .line 14
    iget-object v1, v1, Lb3/g;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move v5, v2

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_5

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v7, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->m:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_2

    .line 47
    .line 48
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move-object v7, v6

    .line 54
    :goto_1
    iget-object v8, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->a:Ll4/l;

    .line 55
    .line 56
    invoke-virtual {v8, v7}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_3

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    :cond_3
    const-string v7, "/"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_4

    .line 77
    .line 78
    new-instance v7, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    new-instance v7, Ljava/io/File;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    add-long/2addr v6, v3

    .line 104
    move-wide v3, v6

    .line 105
    goto :goto_0

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->g:Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const v6, 0x7f13027d

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v6, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->h:Landroid/widget/TextView;

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->i:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->j:Landroid/widget/TextView;

    .line 145
    .line 146
    const-wide/16 v1, 0x400

    .line 147
    .line 148
    cmp-long v5, v3, v1

    .line 149
    .line 150
    if-gez v5, :cond_6

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, " B"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    goto :goto_3

    .line 170
    :cond_6
    const-wide/32 v5, 0x100000

    .line 171
    .line 172
    .line 173
    cmp-long v5, v3, v5

    .line 174
    .line 175
    if-gez v5, :cond_7

    .line 176
    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    div-long/2addr v3, v1

    .line 183
    const-string v1, " KB"

    .line 184
    .line 185
    invoke-static {v5, v3, v4, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    goto :goto_3

    .line 190
    :cond_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 191
    .line 192
    long-to-double v2, v3

    .line 193
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 194
    .line 195
    div-double/2addr v2, v4

    .line 196
    div-double/2addr v2, v4

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const-string v3, "%.1f MB"

    .line 206
    .line 207
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d006e

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->c:Landroidx/fragment/app/a0;

    new-instance p2, Ll4/l;

    iget-object v0, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->a:Ll4/l;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    const p2, 0x7f0a025e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0258

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e:Lcom/google/android/material/card/MaterialCardView;

    const p2, 0x7f0a025f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->f:Lcom/google/android/material/card/MaterialCardView;

    const p2, 0x7f0a0269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->g:Landroid/widget/TextView;

    const p2, 0x7f0a0262

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->h:Landroid/widget/TextView;

    const p2, 0x7f0a0260

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->i:Landroid/widget/TextView;

    const p2, 0x7f0a0261

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->j:Landroid/widget/TextView;

    const p2, 0x7f0a0266

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const p2, 0x7f0a0267

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    iget-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    iget-object p2, p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lv/f;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Lg1/j;)V

    new-instance p2, Lcom/nambimobile/widgets/efab/a;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;->e()V

    return-void
.end method
