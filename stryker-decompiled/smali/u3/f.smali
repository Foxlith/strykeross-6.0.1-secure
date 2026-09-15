.class public abstract Lu3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lu3/f;->a:Ljava/util/LinkedHashMap;

    const-string v1, "airodump-ng"

    const-string v2, "wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aireplay-ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "airmon-ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "airbase-ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aircrack-ng"

    const-string v3, "aircrack"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "besside-ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wpa_supplicant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hcxdumptool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hcxpcapngtool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mdk4"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mdk3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wpspin"

    const-string v2, "wps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reaver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "wash"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bully"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pixiewps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nmap"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "masscan"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nuclei"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "searchsploit"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hydra"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "medusa"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfconsole"

    const-string v2, "metasploit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfvenom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfdb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfrpcd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msfpc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cameradar"

    const-string v2, "camera"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "radar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "macchanger"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "changemac"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x11vnc"

    const-string v2, "vnc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vncserver"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xfce4-session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "startxfce4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xvfb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apt-get"

    const-string v2, "apt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apt-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dpkg-query"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dpkg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iwconfig"

    const-string v2, "iface"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iwlist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ifconfig"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rfkill"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "svc"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "settings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getprop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setprop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dumpsys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 1
    const-string v0, "shell"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    const-string v2, "executing chroot command:"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lu3/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "executing command:"

    .line 24
    .line 25
    invoke-static {v1, v2}, Lu3/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "command:"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lu3/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    sget-object v3, Lu3/f;->a:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v6, 0x1

    .line 60
    if-eqz v4, :cond_8

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Ljava/lang/String;

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    :goto_1
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    if-gez v8, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/16 v9, 0x2d

    .line 83
    .line 84
    const/16 v10, 0x5f

    .line 85
    .line 86
    if-eqz v8, :cond_4

    .line 87
    .line 88
    add-int/lit8 v11, v8, -0x1

    .line 89
    .line 90
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-nez v12, :cond_3

    .line 99
    .line 100
    if-eq v11, v10, :cond_3

    .line 101
    .line 102
    if-ne v11, v9, :cond_4

    .line 103
    .line 104
    :cond_3
    const/4 v11, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move v11, v6

    .line 107
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    add-int/2addr v12, v8

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-ge v12, v13, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    invoke-static {v12}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-nez v13, :cond_5

    .line 127
    .line 128
    if-eq v12, v10, :cond_5

    .line 129
    .line 130
    if-ne v12, v9, :cond_6

    .line 131
    .line 132
    :cond_5
    const/4 v9, 0x0

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    move v9, v6

    .line 135
    :goto_3
    if-eqz v11, :cond_7

    .line 136
    .line 137
    if-eqz v9, :cond_7

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Ljava/lang/String;

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    const-string v2, "\\s+"

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    array-length v2, v1

    .line 156
    const/4 v3, 0x0

    .line 157
    :goto_4
    const/16 v7, 0x8

    .line 158
    .line 159
    const/4 v8, 0x7

    .line 160
    const/4 v9, 0x6

    .line 161
    const/4 v10, 0x5

    .line 162
    const/4 v11, 0x4

    .line 163
    const/4 v12, 0x3

    .line 164
    const/4 v13, 0x2

    .line 165
    const/4 v14, -0x1

    .line 166
    if-ge v3, v2, :cond_17

    .line 167
    .line 168
    aget-object v15, v1, v3

    .line 169
    .line 170
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    if-eqz v16, :cond_9

    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_9
    const/16 v4, 0x3d

    .line 179
    .line 180
    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(I)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    const-string v5, "-"

    .line 185
    .line 186
    if-lez v4, :cond_a

    .line 187
    .line 188
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_a

    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_a
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_b

    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_b
    const/16 v4, 0x2f

    .line 205
    .line 206
    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-ltz v4, :cond_c

    .line 211
    .line 212
    add-int/lit8 v4, v4, 0x1

    .line 213
    .line 214
    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    :cond_c
    const-string v4, "^[\'\"(]+"

    .line 219
    .line 220
    const-string v5, ""

    .line 221
    .line 222
    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    const-string v15, "[\'\")]+$"

    .line 227
    .line 228
    invoke-virtual {v4, v15, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    sparse-switch v5, :sswitch_data_0

    .line 246
    .line 247
    .line 248
    :goto_5
    move v5, v14

    .line 249
    goto/16 :goto_6

    .line 250
    .line 251
    :sswitch_0
    const-string v5, "busybox"

    .line 252
    .line 253
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_d

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_d
    const/16 v5, 0x9

    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :sswitch_1
    const-string v5, "sudo"

    .line 265
    .line 266
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-nez v5, :cond_e

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_e
    move v5, v7

    .line 274
    goto/16 :goto_6

    .line 275
    .line 276
    :sswitch_2
    const-string v5, "bash"

    .line 277
    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-nez v5, :cond_f

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_f
    move v5, v8

    .line 286
    goto :goto_6

    .line 287
    :sswitch_3
    const-string v5, "env"

    .line 288
    .line 289
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-nez v5, :cond_10

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_10
    move v5, v9

    .line 297
    goto :goto_6

    .line 298
    :sswitch_4
    const-string v5, "su"

    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-nez v5, :cond_11

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_11
    move v5, v10

    .line 308
    goto :goto_6

    .line 309
    :sswitch_5
    const-string v5, "sh"

    .line 310
    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-nez v5, :cond_12

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_12
    move v5, v11

    .line 319
    goto :goto_6

    .line 320
    :sswitch_6
    const-string v5, "stryker-ch"

    .line 321
    .line 322
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-nez v5, :cond_13

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_13
    move v5, v12

    .line 330
    goto :goto_6

    .line 331
    :sswitch_7
    const-string v5, "chroot"

    .line 332
    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-nez v5, :cond_14

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_14
    move v5, v13

    .line 341
    goto :goto_6

    .line 342
    :sswitch_8
    const-string v5, "chroot_exec"

    .line 343
    .line 344
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-nez v5, :cond_15

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_15
    move v5, v6

    .line 352
    goto :goto_6

    .line 353
    :sswitch_9
    const-string v5, "bash_exec"

    .line 354
    .line 355
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-nez v5, :cond_16

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_16
    const/4 v5, 0x0

    .line 363
    :goto_6
    packed-switch v5, :pswitch_data_0

    .line 364
    .line 365
    .line 366
    goto :goto_8

    .line 367
    :goto_7
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    .line 368
    .line 369
    goto/16 :goto_4

    .line 370
    .line 371
    :cond_17
    const/4 v4, 0x0

    .line 372
    :goto_8
    if-eqz v4, :cond_32

    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-eqz v1, :cond_18

    .line 379
    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :cond_18
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    sparse-switch v0, :sswitch_data_1

    .line 387
    .line 388
    .line 389
    :goto_9
    move v5, v14

    .line 390
    goto/16 :goto_a

    .line 391
    .line 392
    :sswitch_a
    const-string v0, "touch"

    .line 393
    .line 394
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_19

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_19
    const/16 v5, 0x18

    .line 402
    .line 403
    goto/16 :goto_a

    .line 404
    .line 405
    :sswitch_b
    const-string v0, "sleep"

    .line 406
    .line 407
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_1a

    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_1a
    const/16 v5, 0x17

    .line 415
    .line 416
    goto/16 :goto_a

    .line 417
    .line 418
    :sswitch_c
    const-string v0, "pkill"

    .line 419
    .line 420
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_1b

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_1b
    const/16 v5, 0x16

    .line 428
    .line 429
    goto/16 :goto_a

    .line 430
    .line 431
    :sswitch_d
    const-string v0, "mount"

    .line 432
    .line 433
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-nez v0, :cond_1c

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :cond_1c
    const/16 v5, 0x15

    .line 441
    .line 442
    goto/16 :goto_a

    .line 443
    .line 444
    :sswitch_e
    const-string v0, "mknod"

    .line 445
    .line 446
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_1d

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_1d
    const/16 v5, 0x14

    .line 454
    .line 455
    goto/16 :goto_a

    .line 456
    .line 457
    :sswitch_f
    const-string v0, "mkdir"

    .line 458
    .line 459
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    if-nez v0, :cond_1e

    .line 464
    .line 465
    goto :goto_9

    .line 466
    :cond_1e
    const/16 v5, 0x13

    .line 467
    .line 468
    goto/16 :goto_a

    .line 469
    .line 470
    :sswitch_10
    const-string v0, "chown"

    .line 471
    .line 472
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_1f

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_1f
    const/16 v5, 0x12

    .line 480
    .line 481
    goto/16 :goto_a

    .line 482
    .line 483
    :sswitch_11
    const-string v0, "chmod"

    .line 484
    .line 485
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-nez v0, :cond_20

    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_20
    const/16 v5, 0x11

    .line 493
    .line 494
    goto/16 :goto_a

    .line 495
    .line 496
    :sswitch_12
    const-string v0, "test"

    .line 497
    .line 498
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-nez v0, :cond_21

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_21
    const/16 v5, 0x10

    .line 506
    .line 507
    goto/16 :goto_a

    .line 508
    .line 509
    :sswitch_13
    const-string v0, "sync"

    .line 510
    .line 511
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_22

    .line 516
    .line 517
    goto/16 :goto_9

    .line 518
    .line 519
    :cond_22
    const/16 v5, 0xf

    .line 520
    .line 521
    goto/16 :goto_a

    .line 522
    .line 523
    :sswitch_14
    const-string v0, "kill"

    .line 524
    .line 525
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_23

    .line 530
    .line 531
    goto/16 :goto_9

    .line 532
    .line 533
    :cond_23
    const/16 v5, 0xe

    .line 534
    .line 535
    goto/16 :goto_a

    .line 536
    .line 537
    :sswitch_15
    const-string v0, "echo"

    .line 538
    .line 539
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-nez v0, :cond_24

    .line 544
    .line 545
    goto/16 :goto_9

    .line 546
    .line 547
    :cond_24
    const/16 v5, 0xd

    .line 548
    .line 549
    goto/16 :goto_a

    .line 550
    .line 551
    :sswitch_16
    const-string v0, "cat"

    .line 552
    .line 553
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-nez v0, :cond_25

    .line 558
    .line 559
    goto/16 :goto_9

    .line 560
    .line 561
    :cond_25
    const/16 v5, 0xc

    .line 562
    .line 563
    goto/16 :goto_a

    .line 564
    .line 565
    :sswitch_17
    const-string v0, "rm"

    .line 566
    .line 567
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-nez v0, :cond_26

    .line 572
    .line 573
    goto/16 :goto_9

    .line 574
    .line 575
    :cond_26
    const/16 v5, 0xb

    .line 576
    .line 577
    goto/16 :goto_a

    .line 578
    .line 579
    :sswitch_18
    const-string v0, "ps"

    .line 580
    .line 581
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-nez v0, :cond_27

    .line 586
    .line 587
    goto/16 :goto_9

    .line 588
    .line 589
    :cond_27
    const/16 v5, 0xa

    .line 590
    .line 591
    goto/16 :goto_a

    .line 592
    .line 593
    :sswitch_19
    const-string v0, "mv"

    .line 594
    .line 595
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-nez v0, :cond_28

    .line 600
    .line 601
    goto/16 :goto_9

    .line 602
    .line 603
    :cond_28
    const/16 v5, 0x9

    .line 604
    .line 605
    goto/16 :goto_a

    .line 606
    .line 607
    :sswitch_1a
    const-string v0, "ls"

    .line 608
    .line 609
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v0

    .line 613
    if-nez v0, :cond_29

    .line 614
    .line 615
    goto/16 :goto_9

    .line 616
    .line 617
    :cond_29
    move v5, v7

    .line 618
    goto/16 :goto_a

    .line 619
    .line 620
    :sswitch_1b
    const-string v0, "ln"

    .line 621
    .line 622
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-nez v0, :cond_2a

    .line 627
    .line 628
    goto/16 :goto_9

    .line 629
    .line 630
    :cond_2a
    move v5, v8

    .line 631
    goto :goto_a

    .line 632
    :sswitch_1c
    const-string v0, "id"

    .line 633
    .line 634
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_2b

    .line 639
    .line 640
    goto/16 :goto_9

    .line 641
    .line 642
    :cond_2b
    move v5, v9

    .line 643
    goto :goto_a

    .line 644
    :sswitch_1d
    const-string v0, "cp"

    .line 645
    .line 646
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-nez v0, :cond_2c

    .line 651
    .line 652
    goto/16 :goto_9

    .line 653
    .line 654
    :cond_2c
    move v5, v10

    .line 655
    goto :goto_a

    .line 656
    :sswitch_1e
    const-string v0, "["

    .line 657
    .line 658
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-nez v0, :cond_2d

    .line 663
    .line 664
    goto/16 :goto_9

    .line 665
    .line 666
    :cond_2d
    move v5, v11

    .line 667
    goto :goto_a

    .line 668
    :sswitch_1f
    const-string v0, "killall"

    .line 669
    .line 670
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v0

    .line 674
    if-nez v0, :cond_2e

    .line 675
    .line 676
    goto/16 :goto_9

    .line 677
    .line 678
    :cond_2e
    move v5, v12

    .line 679
    goto :goto_a

    .line 680
    :sswitch_20
    const-string v0, "umount"

    .line 681
    .line 682
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-nez v0, :cond_2f

    .line 687
    .line 688
    goto/16 :goto_9

    .line 689
    .line 690
    :cond_2f
    move v5, v13

    .line 691
    goto :goto_a

    .line 692
    :sswitch_21
    const-string v0, "sysctl"

    .line 693
    .line 694
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-nez v0, :cond_30

    .line 699
    .line 700
    goto/16 :goto_9

    .line 701
    .line 702
    :cond_30
    move v5, v6

    .line 703
    goto :goto_a

    .line 704
    :sswitch_22
    const-string v0, "sqlite3"

    .line 705
    .line 706
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    if-nez v0, :cond_31

    .line 711
    .line 712
    goto/16 :goto_9

    .line 713
    .line 714
    :cond_31
    const/4 v5, 0x0

    .line 715
    :goto_a
    packed-switch v5, :pswitch_data_1

    .line 716
    .line 717
    .line 718
    return-object v4

    .line 719
    :pswitch_1
    const-string v0, "core"

    .line 720
    .line 721
    :cond_32
    :goto_b
    return-object v0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        -0x672c70e4 -> :sswitch_9
        -0x616cbcf7 -> :sswitch_8
        -0x51212d39 -> :sswitch_7
        -0x148d8d9e -> :sswitch_6
        0xe55 -> :sswitch_5
        0xe62 -> :sswitch_4
        0x188ed -> :sswitch_3
        0x2e06d4 -> :sswitch_2
        0x360a6d -> :sswitch_1
        0xe56bd32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x759c5e59 -> :sswitch_22
        -0x34e3cbd2 -> :sswitch_21
        -0x3224c33c -> :sswitch_20
        -0x2a73e67d -> :sswitch_1f
        0x5b -> :sswitch_1e
        0xc6d -> :sswitch_1d
        0xd1b -> :sswitch_1c
        0xd82 -> :sswitch_1b
        0xd87 -> :sswitch_1a
        0xda9 -> :sswitch_19
        0xe03 -> :sswitch_18
        0xe3b -> :sswitch_17
        0x17fd6 -> :sswitch_16
        0x2f6a25 -> :sswitch_15
        0x323b5e -> :sswitch_14
        0x361a9b -> :sswitch_13
        0x364492 -> :sswitch_12
        0x5a4047d -> :sswitch_11
        0x5a40d01 -> :sswitch_10
        0x6322a2f -> :sswitch_f
        0x6325065 -> :sswitch_e
        0x6343c19 -> :sswitch_d
        0x65c83ce -> :sswitch_c
        0x6872ed7 -> :sswitch_b
        0x696df3f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
