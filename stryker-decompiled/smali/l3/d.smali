.class public final synthetic Ll3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/b;
.implements Landroidx/appcompat/widget/o4;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll3/d;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll3/d;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Ll3/d;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Ll3/d;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroid/net/Uri;

    .line 12
    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->K:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-string v6, "wt"

    .line 25
    .line 26
    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_1
    move v2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 62
    :goto_1
    iput-object v1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->K:Ljava/lang/String;

    .line 63
    .line 64
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    const v0, 0x7f130224

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const v0, 0x7f130223

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_3
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_4
    sget p1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :goto_4
    return-void

    .line 90
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 91
    .line 92
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    goto/16 :goto_9

    .line 100
    .line 101
    :cond_5
    :try_start_5
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-nez v0, :cond_6

    .line 110
    .line 111
    if-eqz v0, :cond_8

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 114
    .line 115
    .line 116
    goto :goto_8

    .line 117
    :cond_6
    :try_start_6
    new-instance v5, Ljava/io/BufferedReader;

    .line 118
    .line 119
    new-instance v6, Ljava/io/InputStreamReader;

    .line 120
    .line 121
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 122
    .line 123
    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const/16 v7, 0x1000

    .line 135
    .line 136
    new-array v7, v7, [C

    .line 137
    .line 138
    :goto_5
    invoke-virtual {v5, v7}, Ljava/io/Reader;->read([C)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    const/4 v9, -0x1

    .line 143
    if-eq v8, v9, :cond_7

    .line 144
    .line 145
    invoke-virtual {v6, v7, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :catchall_2
    move-exception v5

    .line 150
    goto :goto_6

    .line 151
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 156
    .line 157
    .line 158
    move-object v1, v5

    .line 159
    goto :goto_8

    .line 160
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 161
    .line 162
    .line 163
    goto :goto_7

    .line 164
    :catchall_3
    move-exception v0

    .line 165
    :try_start_9
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    :goto_7
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 169
    :catch_1
    :cond_8
    :goto_8
    if-nez v1, :cond_9

    .line 170
    .line 171
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 172
    .line 173
    const v0, 0x7f13022e

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_a

    .line 189
    .line 190
    const-string v0, "/"

    .line 191
    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    const/16 v0, 0x2f

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    add-int/2addr v0, v2

    .line 205
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    :cond_a
    if-eqz p1, :cond_b

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_b

    .line 216
    .line 217
    iput-object p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v0, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 220
    .line 221
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    :cond_b
    iput-object v1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->A:Ljava/lang/String;

    .line 225
    .line 226
    iget-object p1, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    iput-boolean v3, v4, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->G:Z

    .line 232
    .line 233
    :goto_9
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    sget v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Ll3/d;->b:Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const v1, 0x7f0a005a

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->k()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :cond_0
    const v1, 0x7f0a0051

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    move v3, v2

    .line 38
    :cond_1
    invoke-virtual {v0, v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->q(Z)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_2
    const v1, 0x7f0a0062

    .line 44
    .line 45
    .line 46
    if-ne p1, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->n()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    const v1, 0x7f0a0059

    .line 54
    .line 55
    .line 56
    if-ne p1, v1, :cond_4

    .line 57
    .line 58
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->I:Landroidx/activity/result/c;

    .line 59
    .line 60
    const-string v0, "*/*"

    .line 61
    .line 62
    filled-new-array {v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_4
    const v1, 0x7f0a0057

    .line 72
    .line 73
    .line 74
    if-ne p1, v1, :cond_7

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->a:Ll4/l;

    .line 91
    .line 92
    const-string v0, "Editor is empty"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_5
    iput-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->K:Ljava/lang/String;

    .line 100
    .line 101
    iget-object p1, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->z:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "stryker_"

    .line 116
    .line 117
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :cond_6
    iget-object v0, v0, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->J:Landroidx/activity/result/c;

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p1, ".ducky"

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, p1}, Landroidx/activity/result/c;->a(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    const v1, 0x7f0a0061

    .line 155
    .line 156
    .line 157
    if-ne p1, v1, :cond_8

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->l()V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_8
    const v1, 0x7f0a0052

    .line 164
    .line 165
    .line 166
    if-ne p1, v1, :cond_a

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_9

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_9
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 184
    .line 185
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    const v1, 0x7f13021c

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const v1, 0x7f1302cc

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    new-instance v1, Ll3/f;

    .line 203
    .line 204
    invoke-direct {v1, v0, v2}, Ll3/f;-><init>(Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;I)V

    .line 205
    .line 206
    .line 207
    const v0, 0x7f1302c8

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const v0, 0x7f1302c9

    .line 215
    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_a
    move v2, v3

    .line 227
    :goto_0
    return v2
.end method
