.class public final synthetic Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Le0/b;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Le0/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Linet/ipaddr/IPAddressSegmentSeries;

    .line 8
    .line 9
    check-cast p2, Linet/ipaddr/IPAddressSegmentSeries;

    .line 10
    .line 11
    invoke-static {p1, p2}, Linet/ipaddr/IPAddressSection;->l(Linet/ipaddr/IPAddressSegmentSeries;Linet/ipaddr/IPAddressSegmentSeries;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    check-cast p2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :pswitch_1
    check-cast p1, Lcom/zalexdev/stryker/custom/News;

    .line 26
    .line 27
    check-cast p2, Lcom/zalexdev/stryker/custom/News;

    .line 28
    .line 29
    iget-boolean p2, p2, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    .line 30
    .line 31
    iget-boolean p1, p1, Lcom/zalexdev/stryker/custom/News;->pinned:Z

    .line 32
    .line 33
    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :pswitch_2
    check-cast p1, Lcom/zalexdev/stryker/custom/Device;

    .line 39
    .line 40
    check-cast p2, Lcom/zalexdev/stryker/custom/Device;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "\\."

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v2, Lt3/b;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lt3/b;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2}, Lcom/zalexdev/stryker/custom/Device;->getIp()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance v0, Lt3/b;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-direct {v0, v2}, Lt3/b;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    move v0, v1

    .line 96
    :goto_0
    array-length v2, p1

    .line 97
    if-ge v1, v2, :cond_1

    .line 98
    .line 99
    array-length v2, p2

    .line 100
    if-ge v1, v2, :cond_1

    .line 101
    .line 102
    aget v0, p1, v1

    .line 103
    .line 104
    aget v2, p2, v1

    .line 105
    .line 106
    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    :goto_1
    return v0

    .line 117
    :pswitch_3
    check-cast p1, Ls3/n;

    .line 118
    .line 119
    check-cast p2, Ls3/n;

    .line 120
    .line 121
    iget p1, p1, Ls3/n;->a:I

    .line 122
    .line 123
    iget p2, p2, Ls3/n;->a:I

    .line 124
    .line 125
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    return p1

    .line 130
    :pswitch_4
    check-cast p1, Ls3/n;

    .line 131
    .line 132
    check-cast p2, Ls3/n;

    .line 133
    .line 134
    iget p1, p1, Ls3/n;->a:I

    .line 135
    .line 136
    iget p2, p2, Ls3/n;->a:I

    .line 137
    .line 138
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    return p1

    .line 143
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 144
    .line 145
    check-cast p2, Ljava/lang/String;

    .line 146
    .line 147
    invoke-static {p1}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    invoke-static {p2}, Lf/u0;->c(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_2

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    invoke-static {p1}, Lf/u0;->g(Ljava/lang/String;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    invoke-static {p2}, Lf/u0;->g(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide p1

    .line 168
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    goto :goto_3

    .line 173
    :cond_3
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    :goto_3
    return p1

    .line 186
    :pswitch_6
    check-cast p1, Lj3/a;

    .line 187
    .line 188
    check-cast p2, Lj3/a;

    .line 189
    .line 190
    iget-object p1, p1, Lj3/a;->b:Ljava/lang/String;

    .line 191
    .line 192
    iget-object p2, p2, Lj3/a;->b:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    return p1

    .line 199
    :pswitch_7
    check-cast p1, Ljava/io/File;

    .line 200
    .line 201
    check-cast p2, Ljava/io/File;

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 208
    .line 209
    .line 210
    move-result-wide p1

    .line 211
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    return p1

    .line 216
    :pswitch_8
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 217
    .line 218
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    return p1

    .line 233
    :pswitch_9
    check-cast p1, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 234
    .line 235
    check-cast p2, Lcom/stryker/terminal/ui/pm/PackageModel;

    .line 236
    .line 237
    invoke-static {p1, p2}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->k(Lcom/stryker/terminal/ui/pm/PackageModel;Lcom/stryker/terminal/ui/pm/PackageModel;)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    return p1

    .line 242
    :pswitch_a
    check-cast p1, Lcom/stryker/terminal/ui/customize/ColorItem;

    .line 243
    .line 244
    check-cast p2, Lcom/stryker/terminal/ui/customize/ColorItem;

    .line 245
    .line 246
    invoke-static {p1, p2}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->f(Lcom/stryker/terminal/ui/customize/ColorItem;Lcom/stryker/terminal/ui/customize/ColorItem;)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    return p1

    .line 251
    :pswitch_b
    check-cast p1, Ljava/lang/Double;

    .line 252
    .line 253
    check-cast p2, Ljava/lang/Double;

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    return p1

    .line 260
    :pswitch_c
    check-cast p1, [B

    .line 261
    .line 262
    check-cast p2, [B

    .line 263
    .line 264
    array-length v0, p1

    .line 265
    array-length v2, p2

    .line 266
    if-eq v0, v2, :cond_4

    .line 267
    .line 268
    array-length p1, p1

    .line 269
    array-length p2, p2

    .line 270
    sub-int v1, p1, p2

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_4
    move v0, v1

    .line 274
    :goto_4
    array-length v2, p1

    .line 275
    if-ge v0, v2, :cond_6

    .line 276
    .line 277
    aget-byte v2, p1, v0

    .line 278
    .line 279
    aget-byte v3, p2, v0

    .line 280
    .line 281
    if-eq v2, v3, :cond_5

    .line 282
    .line 283
    sub-int v1, v2, v3

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_6
    :goto_5
    return v1

    .line 290
    nop

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
