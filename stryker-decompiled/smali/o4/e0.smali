.class public final Lo4/e0;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic A:[Ll4/c;

.field public final synthetic B:Landroid/widget/TextView;

.field public final synthetic C:Lcom/zalexdev/stryker/wifi/Wifi;

.field public final synthetic s:[I

.field public final synthetic t:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic u:[I

.field public final synthetic v:Ljava/util/ArrayList;

.field public final synthetic w:Landroid/widget/TextView;

.field public final synthetic x:Landroid/widget/TextView;

.field public final synthetic y:Ljava/util/ArrayList;

.field public final synthetic z:[I


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wifi/Wifi;Landroidx/fragment/app/a0;Landroid/content/Context;Ljava/lang/String;[ILcom/zalexdev/stryker/custom/WiFINetwork;[ILjava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;[I[Ll4/c;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo4/e0;->C:Lcom/zalexdev/stryker/wifi/Wifi;

    iput-object p5, p0, Lo4/e0;->s:[I

    iput-object p6, p0, Lo4/e0;->t:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p7, p0, Lo4/e0;->u:[I

    iput-object p8, p0, Lo4/e0;->v:Ljava/util/ArrayList;

    iput-object p9, p0, Lo4/e0;->w:Landroid/widget/TextView;

    iput-object p10, p0, Lo4/e0;->x:Landroid/widget/TextView;

    iput-object p11, p0, Lo4/e0;->y:Ljava/util/ArrayList;

    iput-object p12, p0, Lo4/e0;->z:[I

    iput-object p13, p0, Lo4/e0;->A:[Ll4/c;

    iput-object p14, p0, Lo4/e0;->B:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lo4/e0;->C:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "[+] WPS pin:"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v6, "\'"

    .line 32
    .line 33
    const-string v7, ""

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    const-string v5, "[+] WPS pin: "

    .line 38
    .line 39
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const-string v5, "[+] WPS PIN:"

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    const-string v5, "[+] WPS PIN: "

    .line 64
    .line 65
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPin(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v1, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    const-string v5, "[+] WPA PSK:"

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    const-string v5, "[+] WPA PSK: "

    .line 90
    .line 91
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v1, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPsk(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setOK(Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getOK()Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-object v3, p0, Lo4/e0;->s:[I

    .line 119
    .line 120
    iget-object v4, p0, Lo4/e0;->t:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    aget p1, v3, v2

    .line 125
    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 127
    .line 128
    aput p1, v3, v2

    .line 129
    .line 130
    iget-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 131
    .line 132
    invoke-virtual {p1}, Ll4/l;->S()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_4

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPsk()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getPin()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v7, v4, Lcom/zalexdev/stryker/custom/WiFINetwork;->ssid:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, v5, v6, v1, v7}, Ll4/l;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    iget-object p1, p0, Lo4/e0;->u:[I

    .line 156
    .line 157
    aget v1, p1, v2

    .line 158
    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    .line 161
    aput v1, p1, v2

    .line 162
    .line 163
    iget-object v1, p0, Lo4/e0;->v:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getSsid()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    iget-object v0, v0, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "Success: "

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    aget v1, v3, v2

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iget-object v1, p0, Lo4/e0;->w:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v1, "Progress: "

    .line 210
    .line 211
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    aget p1, p1, v2

    .line 215
    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string p1, "/"

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lo4/e0;->y:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object v0, p0, Lo4/e0;->x:Landroid/widget/TextView;

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :cond_5
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "Associating with AP\u2026"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lo4/e0;->z:[I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    aget v0, v1, v2

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    aput v0, v1, v2

    .line 17
    .line 18
    :cond_0
    aget v0, v1, v2

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    iget-object v3, p0, Lo4/e0;->B:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v4, p0, Lo4/e0;->C:Lcom/zalexdev/stryker/wifi/Wifi;

    .line 24
    .line 25
    if-le v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lo4/e0;->A:[Ll4/c;

    .line 28
    .line 29
    aget-object v0, v0, v2

    .line 30
    .line 31
    invoke-virtual {v0}, Ll4/c;->a()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-string v0, "Router in Push Button Mode. Skipping...\n"

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Ll4/c;->d:Ll4/l;

    .line 54
    .line 55
    const-string v1, "hide"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const-string v0, "((\\w{2}:){5}\\w{2})"

    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "XX:XX:XX:XX:XX:XX"

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, v4, Lcom/zalexdev/stryker/wifi/Wifi;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p1, "\n"

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lcom/zalexdev/stryker/wifi/Wifi;->i(Landroid/widget/TextView;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method
