.class public final Lv1/q;
.super Landroidx/appcompat/view/menu/d;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ly0/w;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lv1/q;->d:I

    const-string v0, "database"

    .line 1
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/d;-><init>(Ly0/w;)V

    return-void
.end method

.method public synthetic constructor <init>(Ly0/w;I)V
    .locals 0

    iput p2, p0, Lv1/q;->d:I

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/d;-><init>(Ly0/w;)V

    return-void
.end method


# virtual methods
.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lv1/q;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object v0

    :pswitch_0
    const-string v0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object v0

    :pswitch_1
    const-string v0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object v0

    :pswitch_2
    const-string v0, "UPDATE workspec SET output=? WHERE id=?"

    return-object v0

    :pswitch_3
    const-string v0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object v0

    :pswitch_4
    const-string v0, "UPDATE workspec SET state=? WHERE id=?"

    return-object v0

    :pswitch_5
    const-string v0, "DELETE FROM workspec WHERE id=?"

    return-object v0

    :pswitch_6
    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object v0

    :pswitch_7
    const-string v0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object v0

    :pswitch_8
    const-string v0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object v0

    :pswitch_9
    const-string v0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object v0

    :pswitch_a
    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final t(Lc1/h;Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p2, Lv1/p;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p2, Lv1/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lc1/f;->h(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1, v0, v1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget v2, p2, Lv1/p;->b:I

    .line 16
    .line 17
    invoke-static {v2}, Lg/a;->E(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x2

    .line 22
    int-to-long v4, v2

    .line 23
    invoke-interface {p1, v3, v4, v5}, Lc1/f;->m(IJ)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p2, Lv1/p;->c:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {p1, v3, v2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v2, p2, Lv1/p;->d:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-interface {p1, v3, v2}, Lc1/f;->d(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    iget-object v2, p2, Lv1/p;->e:Lm1/e;

    .line 51
    .line 52
    invoke-static {v2}, Lm1/e;->b(Lm1/e;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x5

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-interface {p1, v3, v2}, Lc1/f;->p(I[B)V

    .line 64
    .line 65
    .line 66
    :goto_3
    iget-object v2, p2, Lv1/p;->f:Lm1/e;

    .line 67
    .line 68
    invoke-static {v2}, Lm1/e;->b(Lm1/e;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v3, 0x6

    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-interface {p1, v3, v2}, Lc1/f;->p(I[B)V

    .line 80
    .line 81
    .line 82
    :goto_4
    const/4 v2, 0x7

    .line 83
    iget-wide v3, p2, Lv1/p;->g:J

    .line 84
    .line 85
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 86
    .line 87
    .line 88
    const/16 v2, 0x8

    .line 89
    .line 90
    iget-wide v3, p2, Lv1/p;->h:J

    .line 91
    .line 92
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 93
    .line 94
    .line 95
    const/16 v2, 0x9

    .line 96
    .line 97
    iget-wide v3, p2, Lv1/p;->i:J

    .line 98
    .line 99
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 100
    .line 101
    .line 102
    iget v2, p2, Lv1/p;->k:I

    .line 103
    .line 104
    int-to-long v2, v2

    .line 105
    const/16 v4, 0xa

    .line 106
    .line 107
    invoke-interface {p1, v4, v2, v3}, Lc1/f;->m(IJ)V

    .line 108
    .line 109
    .line 110
    iget v2, p2, Lv1/p;->l:I

    .line 111
    .line 112
    const-string v3, "backoffPolicy"

    .line 113
    .line 114
    invoke-static {v2, v3}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    if-eqz v2, :cond_c

    .line 119
    .line 120
    sub-int/2addr v2, v0

    .line 121
    const/4 v4, 0x0

    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    if-ne v2, v0, :cond_5

    .line 125
    .line 126
    move v2, v0

    .line 127
    goto :goto_5

    .line 128
    :cond_5
    new-instance p1, Landroidx/fragment/app/u;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_6
    move v2, v4

    .line 135
    :goto_5
    const/16 v5, 0xb

    .line 136
    .line 137
    int-to-long v6, v2

    .line 138
    invoke-interface {p1, v5, v6, v7}, Lc1/f;->m(IJ)V

    .line 139
    .line 140
    .line 141
    const/16 v2, 0xc

    .line 142
    .line 143
    iget-wide v5, p2, Lv1/p;->m:J

    .line 144
    .line 145
    invoke-interface {p1, v2, v5, v6}, Lc1/f;->m(IJ)V

    .line 146
    .line 147
    .line 148
    const/16 v2, 0xd

    .line 149
    .line 150
    iget-wide v5, p2, Lv1/p;->n:J

    .line 151
    .line 152
    invoke-interface {p1, v2, v5, v6}, Lc1/f;->m(IJ)V

    .line 153
    .line 154
    .line 155
    const/16 v2, 0xe

    .line 156
    .line 157
    iget-wide v5, p2, Lv1/p;->o:J

    .line 158
    .line 159
    invoke-interface {p1, v2, v5, v6}, Lc1/f;->m(IJ)V

    .line 160
    .line 161
    .line 162
    const/16 v2, 0xf

    .line 163
    .line 164
    iget-wide v5, p2, Lv1/p;->p:J

    .line 165
    .line 166
    invoke-interface {p1, v2, v5, v6}, Lc1/f;->m(IJ)V

    .line 167
    .line 168
    .line 169
    iget-boolean v2, p2, Lv1/p;->q:Z

    .line 170
    .line 171
    const/16 v5, 0x10

    .line 172
    .line 173
    int-to-long v6, v2

    .line 174
    invoke-interface {p1, v5, v6, v7}, Lc1/f;->m(IJ)V

    .line 175
    .line 176
    .line 177
    iget v2, p2, Lv1/p;->r:I

    .line 178
    .line 179
    const-string v5, "policy"

    .line 180
    .line 181
    invoke-static {v2, v5}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    if-eqz v2, :cond_b

    .line 185
    .line 186
    sub-int/2addr v2, v0

    .line 187
    if-eqz v2, :cond_8

    .line 188
    .line 189
    if-ne v2, v0, :cond_7

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_7
    new-instance p1, Landroidx/fragment/app/u;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_8
    move v0, v4

    .line 199
    :goto_6
    const/16 v2, 0x11

    .line 200
    .line 201
    int-to-long v3, v0

    .line 202
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 203
    .line 204
    .line 205
    iget v0, p2, Lv1/p;->s:I

    .line 206
    .line 207
    int-to-long v2, v0

    .line 208
    const/16 v0, 0x12

    .line 209
    .line 210
    invoke-interface {p1, v0, v2, v3}, Lc1/f;->m(IJ)V

    .line 211
    .line 212
    .line 213
    iget v0, p2, Lv1/p;->t:I

    .line 214
    .line 215
    int-to-long v2, v0

    .line 216
    const/16 v0, 0x13

    .line 217
    .line 218
    invoke-interface {p1, v0, v2, v3}, Lc1/f;->m(IJ)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p2, Lv1/p;->j:Lm1/d;

    .line 222
    .line 223
    const/16 v0, 0x1b

    .line 224
    .line 225
    const/16 v2, 0x1a

    .line 226
    .line 227
    const/16 v3, 0x19

    .line 228
    .line 229
    const/16 v4, 0x18

    .line 230
    .line 231
    const/16 v5, 0x17

    .line 232
    .line 233
    const/16 v6, 0x16

    .line 234
    .line 235
    const/16 v7, 0x15

    .line 236
    .line 237
    const/16 v8, 0x14

    .line 238
    .line 239
    if-eqz p2, :cond_9

    .line 240
    .line 241
    iget v9, p2, Lm1/d;->a:I

    .line 242
    .line 243
    invoke-static {v9}, Lg/a;->r(I)I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    int-to-long v9, v9

    .line 248
    invoke-interface {p1, v8, v9, v10}, Lc1/f;->m(IJ)V

    .line 249
    .line 250
    .line 251
    iget-boolean v8, p2, Lm1/d;->b:Z

    .line 252
    .line 253
    int-to-long v8, v8

    .line 254
    invoke-interface {p1, v7, v8, v9}, Lc1/f;->m(IJ)V

    .line 255
    .line 256
    .line 257
    iget-boolean v7, p2, Lm1/d;->c:Z

    .line 258
    .line 259
    int-to-long v7, v7

    .line 260
    invoke-interface {p1, v6, v7, v8}, Lc1/f;->m(IJ)V

    .line 261
    .line 262
    .line 263
    iget-boolean v6, p2, Lm1/d;->d:Z

    .line 264
    .line 265
    int-to-long v6, v6

    .line 266
    invoke-interface {p1, v5, v6, v7}, Lc1/f;->m(IJ)V

    .line 267
    .line 268
    .line 269
    iget-boolean v5, p2, Lm1/d;->e:Z

    .line 270
    .line 271
    int-to-long v5, v5

    .line 272
    invoke-interface {p1, v4, v5, v6}, Lc1/f;->m(IJ)V

    .line 273
    .line 274
    .line 275
    iget-wide v4, p2, Lm1/d;->f:J

    .line 276
    .line 277
    invoke-interface {p1, v3, v4, v5}, Lc1/f;->m(IJ)V

    .line 278
    .line 279
    .line 280
    iget-wide v3, p2, Lm1/d;->g:J

    .line 281
    .line 282
    invoke-interface {p1, v2, v3, v4}, Lc1/f;->m(IJ)V

    .line 283
    .line 284
    .line 285
    iget-object p2, p2, Lm1/d;->h:Ljava/util/Set;

    .line 286
    .line 287
    invoke-static {p2}, Lg/a;->C(Ljava/util/Set;)[B

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-interface {p1, v0, p2}, Lc1/f;->p(I[B)V

    .line 292
    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_9
    invoke-interface {p1, v8}, Lc1/f;->h(I)V

    .line 296
    .line 297
    .line 298
    invoke-interface {p1, v7}, Lc1/f;->h(I)V

    .line 299
    .line 300
    .line 301
    invoke-interface {p1, v6}, Lc1/f;->h(I)V

    .line 302
    .line 303
    .line 304
    invoke-interface {p1, v5}, Lc1/f;->h(I)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p1, v4}, Lc1/f;->h(I)V

    .line 308
    .line 309
    .line 310
    invoke-interface {p1, v3}, Lc1/f;->h(I)V

    .line 311
    .line 312
    .line 313
    invoke-interface {p1, v2}, Lc1/f;->h(I)V

    .line 314
    .line 315
    .line 316
    invoke-interface {p1, v0}, Lc1/f;->h(I)V

    .line 317
    .line 318
    .line 319
    :goto_7
    const/16 p2, 0x1c

    .line 320
    .line 321
    if-nez v1, :cond_a

    .line 322
    .line 323
    invoke-interface {p1, p2}, Lc1/f;->h(I)V

    .line 324
    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_a
    invoke-interface {p1, p2, v1}, Lc1/f;->d(ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    :goto_8
    return-void

    .line 331
    :cond_b
    throw v3

    .line 332
    :cond_c
    throw v3
.end method
