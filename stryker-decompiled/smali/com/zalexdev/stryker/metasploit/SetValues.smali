.class public Lcom/zalexdev/stryker/metasploit/SetValues;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Lx3/d;

.field public d:Lz3/d;

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:Lcom/zalexdev/stryker/custom/MsfExploit;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/google/android/material/button/MaterialButton;

.field public l:Lcom/google/android/material/button/MaterialButton;

.field public m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/zalexdev/stryker/custom/MsfExploit;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00fd

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->a:Landroidx/fragment/app/a0;

    .line 12
    .line 13
    new-instance p2, Ll4/l;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/u0;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {p2, p2}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 34
    .line 35
    invoke-direct {p2}, Lcom/zalexdev/stryker/dashboard/Dashboard;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    const v2, 0x7f0a0205

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, v0, v2}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->a:Landroidx/fragment/app/a0;

    .line 50
    .line 51
    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->f:Lz3/d;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->d:Lz3/d;

    .line 56
    .line 57
    const v0, 0x7f0a01df

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->h:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0a01d5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->i:Landroid/widget/TextView;

    .line 78
    .line 79
    const v0, 0x7f0a01db

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->j:Landroid/widget/TextView;

    .line 89
    .line 90
    const v0, 0x7f0a0351

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->k:Lcom/google/android/material/button/MaterialButton;

    .line 100
    .line 101
    const v0, 0x7f0a00ab

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->l:Lcom/google/android/material/button/MaterialButton;

    .line 111
    .line 112
    const v0, 0x7f0a069f

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->m:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 122
    .line 123
    const v0, 0x7f0a06a0

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->n:Landroid/widget/TextView;

    .line 133
    .line 134
    const v0, 0x7f0a069e

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 146
    .line 147
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/w0;)V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->l:Lcom/google/android/material/button/MaterialButton;

    .line 154
    .line 155
    new-instance v0, Lcom/nambimobile/widgets/efab/a;

    .line 156
    .line 157
    const/16 v2, 0x10

    .line 158
    .line 159
    invoke-direct {v0, p2, v2}, Lcom/nambimobile/widgets/efab/a;-><init>(Ljava/lang/Object;I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->h:Landroid/widget/TextView;

    .line 166
    .line 167
    iget-object v0, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->f:Lcom/zalexdev/stryker/custom/MsfExploit;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/MsfExploit;->getTitle()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->n:Landroid/widget/TextView;

    .line 177
    .line 178
    const v0, 0x7f13042a

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->k:Lcom/google/android/material/button/MaterialButton;

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/zalexdev/stryker/metasploit/SetValues;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/lang/Thread;

    .line 195
    .line 196
    new-instance v0, Lw3/o;

    .line 197
    .line 198
    invoke-direct {v0, p0, p2, v1}, Lw3/o;-><init>(Lcom/zalexdev/stryker/metasploit/SetValues;Landroidx/fragment/app/u0;I)V

    .line 199
    .line 200
    .line 201
    const-string p2, "msf-args"

    .line 202
    .line 203
    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 207
    .line 208
    .line 209
    return-void
.end method
