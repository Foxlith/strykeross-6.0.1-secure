.class final Lokhttp3/MultipartReader$PartSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/MultipartReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PartSource"
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/MultipartReader;

.field private final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokhttp3/MultipartReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    invoke-static {v0}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    move-result-object v0

    invoke-static {v0, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/MultipartReader;->access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V

    :cond_0
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    const-string v4, "sink"

    .line 8
    .line 9
    invoke-static {v0, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-ltz v6, :cond_a

    .line 17
    .line 18
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 19
    .line 20
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_9

    .line 29
    .line 30
    iget-object v6, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 31
    .line 32
    invoke-static {v6}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v6}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget-object v7, v1, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    .line 41
    .line 42
    iget-object v8, v1, Lokhttp3/MultipartReader$PartSource;->this$0:Lokhttp3/MultipartReader;

    .line 43
    .line 44
    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    sget-object v11, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    .line 49
    .line 50
    invoke-virtual {v7}, Lokio/Timeout;->timeoutNanos()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v6}, Lokio/Timeout;->timeoutNanos()J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    invoke-virtual {v11, v12, v13, v14, v15}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v11

    .line 62
    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-virtual {v6, v11, v12, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lokio/Timeout;->hasDeadline()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_4

    .line 72
    .line 73
    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v11

    .line 77
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_0

    .line 82
    .line 83
    invoke-virtual {v6}, Lokio/Timeout;->deadlineNanoTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v14

    .line 87
    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 96
    .line 97
    .line 98
    :cond_0
    :try_start_0
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    const-wide/16 v4, 0x0

    .line 103
    .line 104
    cmp-long v4, v2, v4

    .line 105
    .line 106
    if-nez v4, :cond_1

    .line 107
    .line 108
    const-wide/16 v14, -0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 127
    .line 128
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 129
    .line 130
    .line 131
    :cond_2
    return-wide v14

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 134
    .line 135
    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    invoke-virtual {v6, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 145
    .line 146
    .line 147
    :cond_3
    throw v0

    .line 148
    :cond_4
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v7}, Lokio/Timeout;->deadlineNanoTime()J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    invoke-virtual {v6, v4, v5}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 159
    .line 160
    .line 161
    :cond_5
    :try_start_1
    invoke-static {v8, v2, v3}, Lokhttp3/MultipartReader;->access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    const-wide/16 v4, 0x0

    .line 166
    .line 167
    cmp-long v4, v2, v4

    .line 168
    .line 169
    if-nez v4, :cond_6

    .line 170
    .line 171
    const-wide/16 v14, -0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_6
    invoke-static {v8}, Lokhttp3/MultipartReader;->access$getSource$p(Lokhttp3/MultipartReader;)Lokio/BufferedSource;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-interface {v4, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    :goto_1
    invoke-virtual {v6, v9, v10, v13}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_7

    .line 190
    .line 191
    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 192
    .line 193
    .line 194
    :cond_7
    return-wide v14

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 197
    .line 198
    invoke-virtual {v6, v9, v10, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Lokio/Timeout;->hasDeadline()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {v6}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 208
    .line 209
    .line 210
    :cond_8
    throw v0

    .line 211
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    const-string v2, "closed"

    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_a
    const-string v0, "byteCount < 0: "

    .line 224
    .line 225
    invoke-static {v0, v2, v3}, Ll1/e;->e(Ljava/lang/String;J)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lokhttp3/MultipartReader$PartSource;->timeout:Lokio/Timeout;

    return-object v0
.end method
