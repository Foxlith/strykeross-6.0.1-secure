.class public final synthetic Lp2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput p2, p0, Lp2/f;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/f;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lp2/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "searchsploit"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lp2/f;->b:Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->C:Ljava/util/EnumMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lp2/l;

    .line 33
    .line 34
    invoke-virtual {v4, v1, v3}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e(Lp2/l;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 40
    .line 41
    const-string v1, "wc -l /opt/exploitdb/files_exploits.csv 2>/dev/null | awk \'{print $1}\'"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ll4/l;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    const-string v1, ""

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    .line 88
    const-string v5, "\\d+"

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const-wide/16 v5, 0x1

    .line 101
    .line 102
    cmp-long v7, v0, v5

    .line 103
    .line 104
    if-lez v7, :cond_4

    .line 105
    .line 106
    sub-long/2addr v0, v5

    .line 107
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "%,d"

    .line 118
    .line 119
    invoke-static {v5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    :cond_4
    new-instance v0, Lp2/g;

    .line 124
    .line 125
    invoke-direct {v0, v4, v2, v3}, Lp2/g;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v0}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    :pswitch_1
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ll4/l;->T(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v1, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    new-instance v1, Lp2/h;

    .line 148
    .line 149
    invoke-direct {v1, v4, v0, v3}, Lp2/h;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;ZI)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    return-void

    .line 156
    :pswitch_2
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->d:Ll4/l;

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ll4/l;->T(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iget-object v2, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_6
    new-instance v2, Lp2/h;

    .line 172
    .line 173
    invoke-direct {v2, v4, v0, v1}, Lp2/h;-><init>(Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;ZI)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v2}, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->i(Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    return-void

    .line 180
    :pswitch_3
    sget-object v0, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->E:[Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-nez v0, :cond_7

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_7
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->e:Landroid/view/View;

    .line 196
    .line 197
    const/16 v2, 0x8

    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v4, Lcom/zalexdev/stryker/arsenal/ArsenalDatabaseTab;->f:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    :cond_8
    :goto_5
    return-void

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
