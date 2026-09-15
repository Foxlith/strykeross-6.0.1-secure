.class public final synthetic Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lv3/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/c;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 7
    .line 8
    iput-object p2, p0, Lv3/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lv3/c;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lv3/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lv3/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lv3/c;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iget-object v2, p0, Lv3/c;->c:Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    iget-object v7, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 31
    .line 32
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-ge v7, v5, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const-string v8, ":"

    .line 51
    .line 52
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    sget-object v8, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->B:Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Ljava/lang/String;

    .line 63
    .line 64
    if-nez v8, :cond_2

    .line 65
    .line 66
    iget-object v9, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 67
    .line 68
    iget-object v9, v9, Ll4/l;->a:Ljava/util/HashMap;

    .line 69
    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    move-object v8, v7

    .line 77
    check-cast v8, Ljava/lang/String;

    .line 78
    .line 79
    :cond_2
    if-nez v8, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const/16 v9, 0x32

    .line 86
    .line 87
    if-eq v7, v9, :cond_3

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    const/16 v9, 0x36

    .line 94
    .line 95
    if-eq v7, v9, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const/16 v9, 0x61

    .line 102
    .line 103
    if-eq v7, v9, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/16 v9, 0x65

    .line 110
    .line 111
    if-eq v7, v9, :cond_3

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const/16 v9, 0x41

    .line 118
    .line 119
    if-eq v7, v9, :cond_3

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/16 v9, 0x45

    .line 126
    .line 127
    if-ne v7, v9, :cond_4

    .line 128
    .line 129
    :cond_3
    const-string v8, "Locally-administered (spoofed)"

    .line 130
    .line 131
    :cond_4
    if-eqz v8, :cond_6

    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_5

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    iget-object v7, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 141
    .line 142
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v7, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 146
    .line 147
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    :goto_0
    iget-object v7, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 152
    .line 153
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    :cond_7
    :goto_1
    if-nez v1, :cond_8

    .line 157
    .line 158
    move-object v1, v4

    .line 159
    :cond_8
    iput-object v1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_9

    .line 166
    .line 167
    sget-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 168
    .line 169
    iget-object v4, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    iget-object v1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 187
    .line 188
    iget-object v4, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->s:Lcom/google/android/material/button/MaterialButton;

    .line 194
    .line 195
    iget-object v3, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    xor-int/2addr v0, v2

    .line 202
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->s:Lcom/google/android/material/button/MaterialButton;

    .line 212
    .line 213
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-void

    .line 217
    :pswitch_0
    iget-object v7, p0, Lv3/c;->c:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v4, "ip link set "

    .line 224
    .line 225
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v4, " down"

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0, v2}, Ll4/l;->q(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 241
    .line 242
    .line 243
    new-instance v2, Lv3/f;

    .line 244
    .line 245
    iget-object v4, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 246
    .line 247
    const-string v0, "macchanger "

    .line 248
    .line 249
    const-string v5, " -m "

    .line 250
    .line 251
    invoke-static {v0, v7, v5, v1}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    const/4 v6, 0x1

    .line 256
    const/4 v8, 0x0

    .line 257
    invoke-direct/range {v2 .. v8}, Lv3/f;-><init>(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
