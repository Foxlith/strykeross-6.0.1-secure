.class public final Ln1/q;
.super Lz0/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Ln1/q;->c:I

    const/16 v0, 0xe

    const/16 v1, 0xf

    .line 1
    invoke-direct {p0, v0, v1}, Lz0/a;-><init>(II)V

    new-instance v0, Landroidx/fragment/app/x0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Ln1/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ln1/q;->c:I

    const/16 v0, 0x9

    const/16 v1, 0xa

    .line 2
    invoke-direct {p0, v0, v1}, Lz0/a;-><init>(II)V

    iput-object p1, p0, Ln1/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln1/q;->c:I

    .line 3
    invoke-direct {p0, p2, p3}, Lz0/a;-><init>(II)V

    iput-object p1, p0, Ln1/q;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ld1/c;)V
    .locals 13

    .line 1
    iget v0, p0, Ln1/q;->c:I

    .line 2
    .line 3
    const-string v1, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    .line 4
    .line 5
    const-string v2, "reschedule_needed"

    .line 6
    .line 7
    const-string v3, "androidx.work.util.preferences"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Ln1/q;->d:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "DROP TABLE `WorkSpec`"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v6, Landroidx/fragment/app/x0;

    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v0, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v9, Landroid/content/ContentValues;

    .line 57
    .line 58
    invoke-direct {v9, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "last_enqueue_time"

    .line 70
    .line 71
    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    .line 73
    .line 74
    const-string v7, "WorkSpec"

    .line 75
    .line 76
    const/4 v8, 0x3

    .line 77
    const-string v10, "last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 78
    .line 79
    new-array v11, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    move-object v6, p1

    .line 82
    invoke-virtual/range {v6 .. v11}, Ld1/c;->t(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_0
    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ld1/c;->c(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast v6, Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v6, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const/4 v7, 0x2

    .line 102
    const-string v8, "last_cancel_all_time_ms"

    .line 103
    .line 104
    if-nez v3, :cond_0

    .line 105
    .line 106
    invoke-interface {v0, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    :cond_0
    const-wide/16 v9, 0x0

    .line 113
    .line 114
    invoke-interface {v0, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_1

    .line 123
    .line 124
    const-wide/16 v9, 0x1

    .line 125
    .line 126
    :cond_1
    invoke-virtual {p1}, Ld1/c;->b()V

    .line 127
    .line 128
    .line 129
    :try_start_0
    new-array v3, v7, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v8, v3, v4

    .line 132
    .line 133
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    aput-object v8, v3, v5

    .line 138
    .line 139
    invoke-virtual {p1, v1, v3}, Ld1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    new-array v3, v7, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v2, v3, v4

    .line 145
    .line 146
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    aput-object v2, v3, v5

    .line 151
    .line 152
    invoke-virtual {p1, v1, v3}, Ld1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ld1/c;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 170
    .line 171
    .line 172
    :cond_2
    const-string v0, "androidx.work.util.id"

    .line 173
    .line 174
    invoke-virtual {v6, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v2, "next_job_scheduler_id"

    .line 179
    .line 180
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_3

    .line 185
    .line 186
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    :cond_3
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    const-string v6, "next_alarm_manager_id"

    .line 197
    .line 198
    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {p1}, Ld1/c;->b()V

    .line 203
    .line 204
    .line 205
    :try_start_1
    new-array v9, v7, [Ljava/lang/Object;

    .line 206
    .line 207
    aput-object v2, v9, v4

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    aput-object v2, v9, v5

    .line 214
    .line 215
    invoke-virtual {p1, v1, v9}, Ld1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    new-array v2, v7, [Ljava/lang/Object;

    .line 219
    .line 220
    aput-object v6, v2, v4

    .line 221
    .line 222
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    aput-object v3, v2, v5

    .line 227
    .line 228
    invoke-virtual {p1, v1, v2}, Ld1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ld1/c;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 246
    .line 247
    .line 248
    :cond_4
    return-void

    .line 249
    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    invoke-virtual {p1}, Ld1/c;->a()V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :pswitch_1
    iget v0, p0, Lz0/a;->b:I

    .line 260
    .line 261
    const/16 v7, 0xa

    .line 262
    .line 263
    if-lt v0, v7, :cond_5

    .line 264
    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p1, v1, v0}, Ld1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_5
    check-cast v6, Landroid/content/Context;

    .line 278
    .line 279
    invoke-virtual {v6, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    .line 293
    .line 294
    :goto_0
    return-void

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
