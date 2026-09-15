.class public final Lr3/q;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:I

.field public final synthetic t:[Ljava/lang/String;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;

.field public final synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo4/p;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lcom/zalexdev/stryker/custom/WiFINetwork;[Z[Ljava/lang/String;[Z[ZLjava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr3/q;->s:I

    iput-object p1, p0, Lr3/q;->z:Ljava/lang/Object;

    iput-object p5, p0, Lr3/q;->u:Ljava/lang/Object;

    iput-object p6, p0, Lr3/q;->v:Ljava/lang/Object;

    iput-object p7, p0, Lr3/q;->t:[Ljava/lang/String;

    iput-object p8, p0, Lr3/q;->w:Ljava/lang/Object;

    iput-object p9, p0, Lr3/q;->x:Ljava/lang/Object;

    iput-object p10, p0, Lr3/q;->y:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lr3/t;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/airbnb/lottie/LottieAnimationView;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr3/q;->s:I

    iput-object p1, p0, Lr3/q;->z:Ljava/lang/Object;

    iput-object p5, p0, Lr3/q;->u:Ljava/lang/Object;

    iput-object p6, p0, Lr3/q;->w:Ljava/lang/Object;

    iput-object p7, p0, Lr3/q;->x:Ljava/lang/Object;

    iput-object p8, p0, Lr3/q;->t:[Ljava/lang/String;

    iput-object p9, p0, Lr3/q;->y:Ljava/lang/Object;

    iput-object p10, p0, Lr3/q;->v:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 11

    .line 1
    iget p1, p0, Lr3/q;->s:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Ll4/c;->a()V

    .line 8
    .line 9
    .line 10
    iget-boolean p1, p0, Ll4/c;->k:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lr3/q;->x:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v2, p0, Lr3/q;->u:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lr3/q;->w:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v4, p0, Lr3/q;->z:Ljava/lang/Object;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    move-object p1, v4

    .line 24
    check-cast p1, Lr3/t;

    .line 25
    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v5, Lr3/d;

    .line 32
    .line 33
    const-string v6, "No credentials found"

    .line 34
    .line 35
    invoke-direct {v5, v2, v6, v0}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Lr3/t;->b:Landroid/app/Activity;

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    move-object v7, v3

    .line 44
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 45
    .line 46
    move-object v8, v1

    .line 47
    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    new-instance v1, Lcom/stryker/terminal/ui/other/l;

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    move-object v5, v1

    .line 54
    move-object v6, p1

    .line 55
    invoke-direct/range {v5 .. v10}, Lcom/stryker/terminal/ui/other/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p1, p1, Lr3/t;->b:Landroid/app/Activity;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    move-object p1, v4

    .line 65
    check-cast p1, Lr3/t;

    .line 66
    .line 67
    check-cast v2, Landroid/widget/TextView;

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v6, "Credentials found\nUsername: "

    .line 72
    .line 73
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v6, p0, Lr3/q;->t:[Ljava/lang/String;

    .line 77
    .line 78
    aget-object v6, v6, v0

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v6, "\nPassword: "

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v6, p0, Lr3/q;->y:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v6, [Ljava/lang/String;

    .line 91
    .line 92
    aget-object v6, v6, v0

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    new-instance v6, Lr3/d;

    .line 105
    .line 106
    invoke-direct {v6, v2, v5, v0}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    iget-object v2, p1, Lr3/t;->b:Landroid/app/Activity;

    .line 110
    .line 111
    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    move-object v7, v3

    .line 115
    check-cast v7, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 116
    .line 117
    move-object v8, v1

    .line 118
    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    .line 119
    .line 120
    const/4 v9, 0x2

    .line 121
    new-instance v1, Lcom/stryker/terminal/ui/other/l;

    .line 122
    .line 123
    const/4 v10, 0x1

    .line 124
    move-object v5, v1

    .line 125
    move-object v6, p1

    .line 126
    invoke-direct/range {v5 .. v10}, Lcom/stryker/terminal/ui/other/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :goto_1
    check-cast v4, Lr3/t;

    .line 131
    .line 132
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance p1, Lr3/m;

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    const/16 v2, 0x64

    .line 141
    .line 142
    invoke-direct {p1, v3, v2, v1}, Lr3/m;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;II)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v4, Lr3/t;->b:Landroid/app/Activity;

    .line 146
    .line 147
    invoke-virtual {v1, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lr3/q;->v:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v1, p0, Ll4/c;->b:Landroid/content/Context;

    .line 155
    .line 156
    const v2, 0x104000a

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v2, Lr3/d;

    .line 164
    .line 165
    invoke-direct {v2, p1, v1, v0}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, v4, Lr3/t;->b:Landroid/app/Activity;

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lr3/q;->y:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lr3/q;->s:I

    .line 4
    .line 5
    iget-object v2, p0, Lr3/q;->t:[Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, Lr3/q;->u:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v1, " "

    .line 17
    .line 18
    const-string v7, "["

    .line 19
    .line 20
    const-string v8, "]"

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    :try_start_0
    move-object v9, v5

    .line 27
    check-cast v9, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 28
    .line 29
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-nez v9, :cond_1

    .line 42
    .line 43
    move-object v9, v5

    .line 44
    check-cast v9, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 45
    .line 46
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-nez v9, :cond_1

    .line 55
    .line 56
    move-object v9, v5

    .line 57
    check-cast v9, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 58
    .line 59
    invoke-virtual {v9}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-nez v9, :cond_1

    .line 72
    .line 73
    const-string v9, " WPA"

    .line 74
    .line 75
    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_2

    .line 80
    .line 81
    :cond_1
    iget-object v9, p0, Lr3/q;->v:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v9, [Z

    .line 84
    .line 85
    aput-boolean v6, v9, v4

    .line 86
    .line 87
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const-string v10, "\\s+"

    .line 92
    .line 93
    if-eqz v9, :cond_3

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    array-length v11, v9

    .line 106
    if-le v11, v6, :cond_3

    .line 107
    .line 108
    aget-object v9, v9, v6

    .line 109
    .line 110
    const-string v11, "Elapsed:"

    .line 111
    .line 112
    invoke-virtual {v9, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v9, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    aput-object v7, v2, v4

    .line 129
    .line 130
    :cond_3
    check-cast v5, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string v2, "WPA handshake:"

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    iget-object v3, p0, Lr3/q;->z:Ljava/lang/Object;

    .line 159
    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    :try_start_2
    move-object v2, v3

    .line 163
    check-cast v2, Lo4/p;

    .line 164
    .line 165
    const-string v5, "Handshake captured! Bingo!"

    .line 166
    .line 167
    invoke-virtual {v2, v5}, Ll4/h;->e(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lr3/q;->w:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v2, [Z

    .line 173
    .line 174
    aput-boolean v6, v2, v4

    .line 175
    .line 176
    :cond_4
    const-string v2, "PMKID"

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_5

    .line 183
    .line 184
    move-object v2, v3

    .line 185
    check-cast v2, Lo4/p;

    .line 186
    .line 187
    const-string v5, "PMKID captured! Bingo!"

    .line 188
    .line 189
    invoke-virtual {v2, v5}, Ll4/h;->e(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lr3/q;->x:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v2, [Z

    .line 195
    .line 196
    aput-boolean v6, v2, v4

    .line 197
    .line 198
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    array-length v1, p1

    .line 203
    :goto_0
    if-ge v4, v1, :cond_7

    .line 204
    .line 205
    aget-object v2, p1, v4

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    const/16 v6, 0x11

    .line 212
    .line 213
    if-ne v5, v6, :cond_6

    .line 214
    .line 215
    const/16 v5, 0x3a

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    const/4 v6, 0x2

    .line 222
    if-ne v5, v6, :cond_6

    .line 223
    .line 224
    sget-object v5, Lo4/u;->m:Ljava/util/regex/Pattern;

    .line 225
    .line 226
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_6

    .line 235
    .line 236
    move-object v5, v0

    .line 237
    check-cast v5, Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-nez v5, :cond_6

    .line 244
    .line 245
    check-cast v0, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    check-cast v3, Lo4/p;

    .line 251
    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v0, "New client found : "

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v3, p1}, Ll4/h;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_1

    .line 273
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 274
    .line 275
    goto :goto_0

    .line 276
    :catch_0
    :cond_7
    :goto_1
    return-void

    .line 277
    :pswitch_0
    check-cast v5, Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    const-string v1, "Username:"

    .line 283
    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_8

    .line 289
    .line 290
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    aput-object v5, v2, v4

    .line 299
    .line 300
    :cond_8
    const-string v5, "Password:"

    .line 301
    .line 302
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_9

    .line 307
    .line 308
    move-object v7, v0

    .line 309
    check-cast v7, [Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    aput-object v3, v7, v4

    .line 320
    .line 321
    :cond_9
    aget-object v2, v2, v4

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_a

    .line 328
    .line 329
    check-cast v0, [Ljava/lang/String;

    .line 330
    .line 331
    aget-object v0, v0, v4

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_b

    .line 338
    .line 339
    :cond_a
    iput-boolean v6, p0, Ll4/c;->k:Z

    .line 340
    .line 341
    :cond_b
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const-string v1, "not found"

    .line 346
    .line 347
    if-eqz v0, :cond_c

    .line 348
    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_c

    .line 354
    .line 355
    iput-boolean v6, p0, Ll4/c;->k:Z

    .line 356
    .line 357
    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_d

    .line 362
    .line 363
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_d

    .line 368
    .line 369
    iput-boolean v6, p0, Ll4/c;->k:Z

    .line 370
    .line 371
    :cond_d
    const-string v0, "This camera does not require authentication"

    .line 372
    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_e

    .line 378
    .line 379
    iput-boolean v6, p0, Ll4/c;->k:Z

    .line 380
    .line 381
    :cond_e
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
