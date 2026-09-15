.class public final synthetic Lcom/stryker/terminal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/stryker/terminal/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/stryker/terminal/a;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, [I

    .line 10
    .line 11
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 12
    .line 13
    aput p2, v2, v1

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast v2, Lcom/zalexdev/stryker/settings/VmSettingsFragment;

    .line 17
    .line 18
    sget p1, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->t:I

    .line 19
    .line 20
    const p1, 0x7f1306ab

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v2, p1}, Lcom/zalexdev/stryker/settings/VmSettingsFragment;->g(Ljava/lang/String;)Lf/n;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const p2, 0x1020014

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/Thread;

    .line 41
    .line 42
    new-instance v1, Lv3/g;

    .line 43
    .line 44
    const/16 v3, 0xc

    .line 45
    .line 46
    invoke-direct {v1, v2, p2, p1, v3}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    const-string p1, "vm-benchmark"

    .line 50
    .line 51
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_1
    check-cast v2, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 59
    .line 60
    sget p1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/Thread;

    .line 66
    .line 67
    new-instance p2, Lh4/f;

    .line 68
    .line 69
    invoke-direct {p2, v2, v1}, Lh4/f;-><init>(Lcom/zalexdev/stryker/settings/SettingsHomeFragment;I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_2
    check-cast v2, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 80
    .line 81
    iget-object p1, v2, Lcom/zalexdev/stryker/nmap/NmapScanner;->I:Ll4/l;

    .line 82
    .line 83
    const-string p2, "nmap_target_history"

    .line 84
    .line 85
    const-string v0, ""

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const p1, 0x7f13048e

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v2, p1}, Lcom/zalexdev/stryker/nmap/NmapScanner;->g(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_3
    check-cast v2, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;

    .line 102
    .line 103
    iget-object p1, v2, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->e:Lp2/j;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget p2, v2, Lcom/zalexdev/stryker/arsenal/RunExploitSheet;->d:I

    .line 108
    .line 109
    if-ltz p2, :cond_2

    .line 110
    .line 111
    iget-object p1, p1, Lp2/j;->a:Landroidx/fragment/app/Fragment;

    .line 112
    .line 113
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;

    .line 114
    .line 115
    iget-object v0, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->g:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-ge p2, v0, :cond_2

    .line 122
    .line 123
    iget-object v0, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->b:Ll4/l;

    .line 124
    .line 125
    const-string v3, "exploits"

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v4, v3}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->g:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    iget-object v3, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->h:Lp2/t;

    .line 143
    .line 144
    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->e:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    iget-object v0, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->d:Landroid/view/View;

    .line 165
    .line 166
    const/16 v3, 0x8

    .line 167
    .line 168
    if-eqz p2, :cond_0

    .line 169
    .line 170
    move v4, v1

    .line 171
    goto :goto_0

    .line 172
    :cond_0
    move v4, v3

    .line 173
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p1, Lcom/zalexdev/stryker/arsenal/ArsenalHubTab;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    if-eqz p2, :cond_1

    .line 179
    .line 180
    move v1, v3

    .line 181
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    instance-of p2, p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 189
    .line 190
    if-eqz p2, :cond_2

    .line 191
    .line 192
    check-cast p1, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;->d()V

    .line 195
    .line 196
    .line 197
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_4
    check-cast v2, Lcom/stryker/terminal/App;

    .line 202
    .line 203
    invoke-static {v2, p1, p2}, Lcom/stryker/terminal/App;->b(Lcom/stryker/terminal/App;Landroid/content/DialogInterface;I)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
