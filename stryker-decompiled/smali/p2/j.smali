.class public final Lp2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 4
    .line 5
    sget-object v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x1

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->u:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 38
    .line 39
    const v2, 0x7f0800c9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 50
    .line 51
    const v4, 0x7f060073

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v4}, Lx/d;->a(Landroid/content/Context;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 59
    .line 60
    invoke-virtual {p1, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 64
    .line 65
    const v2, 0x7f130069

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    .line 70
    .line 71
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 77
    .line 78
    const/16 v2, 0x64

    .line 79
    .line 80
    invoke-virtual {p1, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    instance-of v1, p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->m:Lcom/google/android/material/textview/MaterialTextView;

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    .line 102
    .line 103
    new-instance v1, Lp2/f;

    .line 104
    .line 105
    const/4 v2, 0x3

    .line 106
    invoke-direct {v1, v0, v2}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 113
    .line 114
    .line 115
    :goto_0
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e:Landroid/view/View;

    .line 116
    .line 117
    new-instance v1, Lp2/f;

    .line 118
    .line 119
    invoke-direct {v1, v0, v3}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 120
    .line 121
    .line 122
    const-wide/16 v2, 0x2ee

    .line 123
    .line 124
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->u:Landroid/widget/ProgressBar;

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 139
    .line 140
    const v4, 0x7f0800d0

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->t:Landroid/widget/ImageView;

    .line 147
    .line 148
    iget-object v4, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 149
    .line 150
    sget-object v5, Lx/g;->a:Ljava/lang/Object;

    .line 151
    .line 152
    const v5, 0x7f060302

    .line 153
    .line 154
    .line 155
    invoke-static {v4, v5}, Lx/d;->a(Landroid/content/Context;I)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-virtual {p1, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 165
    .line 166
    const v4, 0x7f13006a

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    .line 181
    .line 182
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->w:Lcom/google/android/material/button/MaterialButton;

    .line 188
    .line 189
    const v0, 0x7f130680

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Ln2/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->B:Ln2/c;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Ln2/c;->a(Ln2/f;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->B:Ln2/c;

    .line 14
    .line 15
    iget-object p1, p1, Ln2/c;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->B:Ln2/c;

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
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final c(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 31
    .line 32
    iget-object p2, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->v:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final d(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->C:Ljava/util/EnumMap;

    .line 6
    .line 7
    invoke-static {}, Lp2/k;->values()[Lp2/k;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    aget-object p1, v2, p1

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lp2/l;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {v1}, Lo/i;->d(I)[I

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aget p2, v1, p2

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e(Lp2/l;I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->s:Lcom/google/android/material/textview/MaterialTextView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
