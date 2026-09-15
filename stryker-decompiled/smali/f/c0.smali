.class public final Lf/c0;
.super Lf/e0;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lf/h0;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/h0;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf/c0;->c:I

    iput-object p1, p0, Lf/c0;->d:Lf/h0;

    .line 1
    invoke-direct {p0, p1}, Lf/e0;-><init>(Lf/h0;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lf/c0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/h0;Lv1/t;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf/c0;->c:I

    iput-object p1, p0, Lf/c0;->d:Lf/h0;

    .line 2
    invoke-direct {p0, p1}, Lf/e0;-><init>(Lf/h0;)V

    iput-object p2, p0, Lf/c0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf/c0;->c:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lf/c0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v4, Lv1/t;

    .line 13
    .line 14
    iget-object v1, v4, Lv1/t;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lf/v0;

    .line 17
    .line 18
    iget-wide v5, v1, Lf/v0;->b:J

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    cmp-long v5, v5, v7

    .line 25
    .line 26
    if-lez v5, :cond_0

    .line 27
    .line 28
    :goto_0
    iget-boolean v1, v1, Lf/v0;->a:Z

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_0
    iget-object v5, v4, Lv1/t;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v5, Landroid/content/Context;

    .line 35
    .line 36
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 37
    .line 38
    invoke-static {v5, v6}, Lv1/f;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    const-string v5, "network"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Lv1/t;->k(Ljava/lang/String;)Landroid/location/Location;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v5, v6

    .line 53
    :goto_1
    iget-object v7, v4, Lv1/t;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Landroid/content/Context;

    .line 56
    .line 57
    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 58
    .line 59
    invoke-static {v7, v8}, Lv1/f;->h(Landroid/content/Context;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_2

    .line 64
    .line 65
    const-string v6, "gps"

    .line 66
    .line 67
    invoke-virtual {v4, v6}, Lv1/t;->k(Ljava/lang/String;)Landroid/location/Location;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    :cond_2
    if-eqz v6, :cond_3

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    cmp-long v7, v7, v9

    .line 84
    .line 85
    if-lez v7, :cond_4

    .line 86
    .line 87
    :goto_2
    move-object v5, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    if-eqz v6, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_3
    if-eqz v5, :cond_b

    .line 93
    .line 94
    iget-object v4, v4, Lv1/t;->d:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v4, Lf/v0;

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v13

    .line 102
    sget-object v6, Lf/u0;->d:Lf/u0;

    .line 103
    .line 104
    if-nez v6, :cond_5

    .line 105
    .line 106
    new-instance v6, Lf/u0;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    sput-object v6, Lf/u0;->d:Lf/u0;

    .line 112
    .line 113
    :cond_5
    sget-object v11, Lf/u0;->d:Lf/u0;

    .line 114
    .line 115
    const-wide/32 v22, 0x5265c00

    .line 116
    .line 117
    .line 118
    sub-long v20, v13, v22

    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 121
    .line 122
    .line 123
    move-result-wide v16

    .line 124
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 125
    .line 126
    .line 127
    move-result-wide v18

    .line 128
    move-object v15, v11

    .line 129
    invoke-virtual/range {v15 .. v21}, Lf/u0;->b(DDJ)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 133
    .line 134
    .line 135
    move-result-wide v7

    .line 136
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 137
    .line 138
    .line 139
    move-result-wide v9

    .line 140
    move-object v6, v11

    .line 141
    move-wide v11, v13

    .line 142
    invoke-virtual/range {v6 .. v12}, Lf/u0;->b(DDJ)V

    .line 143
    .line 144
    .line 145
    iget v6, v15, Lf/u0;->c:I

    .line 146
    .line 147
    if-ne v6, v3, :cond_6

    .line 148
    .line 149
    move v6, v3

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    const/4 v6, 0x0

    .line 152
    :goto_4
    iget-wide v7, v15, Lf/u0;->b:J

    .line 153
    .line 154
    iget-wide v9, v15, Lf/u0;->a:J

    .line 155
    .line 156
    add-long v20, v13, v22

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 159
    .line 160
    .line 161
    move-result-wide v16

    .line 162
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 163
    .line 164
    .line 165
    move-result-wide v18

    .line 166
    move-object v5, v15

    .line 167
    invoke-virtual/range {v15 .. v21}, Lf/u0;->b(DDJ)V

    .line 168
    .line 169
    .line 170
    iget-wide v11, v5, Lf/u0;->b:J

    .line 171
    .line 172
    const-wide/16 v15, -0x1

    .line 173
    .line 174
    cmp-long v5, v7, v15

    .line 175
    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    cmp-long v5, v9, v15

    .line 179
    .line 180
    if-nez v5, :cond_7

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_7
    cmp-long v5, v13, v9

    .line 184
    .line 185
    if-lez v5, :cond_8

    .line 186
    .line 187
    move-wide v7, v11

    .line 188
    goto :goto_5

    .line 189
    :cond_8
    cmp-long v5, v13, v7

    .line 190
    .line 191
    if-lez v5, :cond_9

    .line 192
    .line 193
    move-wide v7, v9

    .line 194
    :cond_9
    :goto_5
    const-wide/32 v9, 0xea60

    .line 195
    .line 196
    .line 197
    add-long/2addr v7, v9

    .line 198
    goto :goto_7

    .line 199
    :cond_a
    :goto_6
    const-wide/32 v7, 0x2932e00

    .line 200
    .line 201
    .line 202
    add-long/2addr v7, v13

    .line 203
    :goto_7
    iput-boolean v6, v4, Lf/v0;->a:Z

    .line 204
    .line 205
    iput-wide v7, v4, Lf/v0;->b:J

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :goto_8
    if-eqz v1, :cond_c

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_b
    const-string v1, "TwilightManager"

    .line 213
    .line 214
    const-string v4, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 215
    .line 216
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/16 v4, 0xb

    .line 224
    .line 225
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    const/4 v4, 0x6

    .line 230
    if-lt v1, v4, :cond_d

    .line 231
    .line 232
    const/16 v4, 0x16

    .line 233
    .line 234
    if-lt v1, v4, :cond_c

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_c
    move v2, v3

    .line 238
    :cond_d
    :goto_9
    return v2

    .line 239
    :pswitch_0
    check-cast v4, Landroid/os/PowerManager;

    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_e
    move v2, v3

    .line 249
    :goto_a
    return v2

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
