.class public final synthetic Lk4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/b;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk4/h;->a:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    iget-object v0, p0, Lk4/h;->a:Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 4
    .line 5
    iget-object v6, v0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;->h:Lk4/f;

    .line 6
    .line 7
    if-eqz v6, :cond_9

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_0
    iget-object v0, v6, Lk4/f;->a:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    const-string v8, "_display_name"

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "image_"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ".img"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {v8}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v1, p1

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ltz v1, :cond_1

    .line 73
    .line 74
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "[^a-z0-9._-]"

    .line 93
    .line 94
    const-string v3, "_"

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    .line 103
    move-object v9, v1

    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v1

    .line 106
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    throw v1

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 121
    .line 122
    new-instance v1, Ljava/io/File;

    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const-string v3, "arsenal/images"

    .line 129
    .line 130
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 140
    .line 141
    .line 142
    :cond_3
    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const/4 v2, 0x0

    .line 150
    :try_start_5
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 151
    .line 152
    .line 153
    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 154
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 157
    .line 158
    .line 159
    if-nez p1, :cond_4

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 162
    .line 163
    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :catchall_2
    move-exception v0

    .line 171
    goto :goto_5

    .line 172
    :cond_4
    const/high16 v3, 0x10000

    .line 173
    .line 174
    :try_start_8
    new-array v3, v3, [B

    .line 175
    .line 176
    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    const/4 v5, 0x0

    .line 181
    if-lez v4, :cond_5

    .line 182
    .line 183
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :catchall_3
    move-exception v0

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 190
    .line 191
    .line 192
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 193
    .line 194
    .line 195
    :try_start_b
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 196
    .line 197
    const-string v1, "r"

    .line 198
    .line 199
    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 203
    .line 204
    .line 205
    :catch_1
    const/4 p1, 0x1

    .line 206
    invoke-virtual {v0, p1, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    goto :goto_7

    .line 214
    :goto_3
    :try_start_c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :catchall_4
    move-exception v1

    .line 219
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :goto_4
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 223
    :goto_5
    if-eqz p1, :cond_6

    .line 224
    .line 225
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :catchall_5
    move-exception p1

    .line 230
    :try_start_f
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    :goto_6
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 234
    :catch_2
    :cond_7
    :goto_7
    if-nez v2, :cond_8

    .line 235
    .line 236
    new-instance p1, Ll4/l;

    .line 237
    .line 238
    invoke-direct {p1, v7}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    const-string v0, "Could not copy image into Stryker storage"

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_8
    iput-object v2, v6, Lk4/f;->e:Ljava/lang/String;

    .line 248
    .line 249
    iget-object p1, v6, Lk4/f;->b:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 250
    .line 251
    const v0, 0x7f0a00cc

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0}, Lf/j0;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 259
    .line 260
    if-eqz p1, :cond_9

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    :cond_9
    :goto_8
    return-void
.end method
