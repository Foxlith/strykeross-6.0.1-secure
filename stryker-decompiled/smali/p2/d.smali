.class public final synthetic Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/d;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget p1, p0, Lp2/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lp2/d;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    sget-object v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lp2/r;->d()Lp2/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, v0, Lp2/r;->h:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-object v1, p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->B:Ln2/c;

    .line 24
    .line 25
    invoke-virtual {v1}, Ln2/c;->clear()V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lp2/f;

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-direct {v1, p1, v2}, Lp2/f;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->g()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->b:Landroidx/fragment/app/a0;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->c:Landroid/content/Context;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-boolean v2, v0, Lp2/r;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    :goto_0
    monitor-exit v0

    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, v0, Lp2/r;->l:Landroid/content/Context;

    .line 57
    .line 58
    new-instance v2, Ll4/l;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v0, Lp2/r;->m:Ll4/l;

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    iput-boolean p1, v0, Lp2/r;->h:Z

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    iput-boolean v2, v0, Lp2/r;->i:Z

    .line 70
    .line 71
    iput-boolean v2, v0, Lp2/r;->j:Z

    .line 72
    .line 73
    iget-object v3, v0, Lp2/r;->c:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 76
    .line 77
    .line 78
    move v3, v2

    .line 79
    :goto_1
    iget-object v4, v0, Lp2/r;->d:[I

    .line 80
    .line 81
    array-length v5, v4

    .line 82
    if-ge v3, v5, :cond_2

    .line 83
    .line 84
    aput v2, v4, v3

    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    iput-boolean p1, v0, Lp2/r;->e:Z

    .line 92
    .line 93
    iput v2, v0, Lp2/r;->f:I

    .line 94
    .line 95
    const v3, 0x7f13006c

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lp2/r;->e(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iput-object v3, v0, Lp2/r;->g:Ljava/lang/CharSequence;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lp2/r;->c(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-boolean p1, v0, Lp2/r;->e:Z

    .line 108
    .line 109
    iput v2, v0, Lp2/r;->f:I

    .line 110
    .line 111
    iget-object v3, v0, Lp2/r;->a:Landroid/os/Handler;

    .line 112
    .line 113
    new-instance v4, Lp2/n;

    .line 114
    .line 115
    invoke-direct {v4, v0, p1, v2, p1}, Lp2/n;-><init>(Ljava/lang/Object;ZII)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    sget-object v3, Ln2/e;->a:Ln2/e;

    .line 122
    .line 123
    const-string v4, "Installing searchsploit"

    .line 124
    .line 125
    invoke-virtual {v0, v3, v4}, Lp2/r;->a(Ln2/e;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    invoke-virtual {v0, v2, v3}, Lp2/r;->b(II)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1, p1}, Lp2/r;->b(II)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v2, "cd /"

    .line 141
    .line 142
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    const-string v2, "apt-get -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold -o APT::Sandbox::User=root -o Acquire::Retries=3 update"

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    const-string v2, "git ca-certificates"

    .line 158
    .line 159
    invoke-static {v2}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    const-string v2, "command -v git >/dev/null 2>&1 || echo __STRYKER_NO_GIT__"

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    const-string v2, "rm -rf /opt/exploitdb"

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    const-string v2, "mkdir -p /opt"

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const-string v2, "git clone --depth 1 --progress https://gitlab.com/exploit-database/exploitdb /opt/exploitdb"

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    const-string v2, "chmod 0755 /opt/exploitdb/searchsploit"

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    const-string v2, "ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit"

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    const-string v2, "ls -la /opt/exploitdb/searchsploit"

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    new-instance v2, Lp2/q;

    .line 202
    .line 203
    iget-object v3, v0, Lp2/r;->l:Landroid/content/Context;

    .line 204
    .line 205
    invoke-direct {v2, v0, v1, v3, p1}, Lp2/q;-><init>(Lp2/r;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :goto_2
    return-void

    .line 211
    :goto_3
    monitor-exit v0

    .line 212
    throw p1

    .line 213
    :pswitch_0
    sget-object p1, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 214
    .line 215
    iget-object p1, p0, Lp2/d;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->j()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
