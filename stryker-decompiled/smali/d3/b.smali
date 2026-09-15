.class public final Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final d:[B

.field public static volatile e:J


# instance fields
.field public final a:Ljava/lang/Process;

.field public final b:Ljava/io/BufferedInputStream;

.field public final c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ld3/b;->d:[B

    const-wide/16 v0, 0x32

    sput-wide v0, Ld3/b;->e:J

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x54t
        0x52t
        0x4bt
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Process;Ljava/io/BufferedInputStream;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/b;->a:Ljava/lang/Process;

    iput-object p2, p0, Ld3/b;->b:Ljava/io/BufferedInputStream;

    iput-object p3, p0, Ld3/b;->c:Ljava/lang/Thread;

    return-void
.end method

.method public static i(Lf/q0;)Ld3/b;
    .locals 10

    .line 1
    const-string v0, "pkill -f \'cat /dev/ttyGS0\' 2>/dev/null; sleep "

    .line 2
    .line 3
    sget-wide v1, Ld3/b;->e:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "su"

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-wide v4, Ld3/b;->e:J

    .line 24
    .line 25
    long-to-double v4, v4

    .line 26
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    div-double/2addr v4, v6

    .line 32
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 42
    .line 43
    const-string v8, "%.3f"

    .line 44
    .line 45
    new-array v9, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    aput-object v4, v9, v5

    .line 53
    .line 54
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "; exit\n"

    .line 62
    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :catch_0
    :goto_0
    const-string v0, "chmod 0666 "

    .line 90
    .line 91
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ld3/b;->t()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, " 2>/dev/null; stty -F "

    .line 116
    .line 117
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ld3/b;->t()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " 115200 cs8 -cstopb -parenb raw -echo -ixon -ixoff -icanon -isig clocal -hupcl -crtscts 2>/dev/null; exit\n"

    .line 128
    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 137
    .line 138
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    :catch_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v4, "exec cat "

    .line 170
    .line 171
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ld3/b;->t()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v4, "\n"

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 204
    .line 205
    .line 206
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    const/high16 v4, 0x40000

    .line 213
    .line 214
    invoke-direct {v1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 215
    .line 216
    .line 217
    new-instance v3, Ljava/lang/Thread;

    .line 218
    .line 219
    new-instance v4, Lw2/h;

    .line 220
    .line 221
    const/4 v5, 0x5

    .line 222
    invoke-direct {v4, v1, p0, v5}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    const-string p0, "stryker-frame-rx"

    .line 226
    .line 227
    invoke-direct {v3, v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 231
    .line 232
    .line 233
    new-instance p0, Ld3/b;

    .line 234
    .line 235
    invoke-direct {p0, v0, v1, v3}, Ld3/b;-><init>(Ljava/lang/Process;Ljava/io/BufferedInputStream;Ljava/lang/Thread;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 239
    .line 240
    .line 241
    return-object p0
.end method

.method public static s(Ljava/io/BufferedInputStream;[BII)Z
    .locals 1

    .line 1
    :goto_0
    if-lez p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static t()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\'\\\'\'"

    const-string v3, "/dev/ttyGS0"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ld3/b;->b:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Ld3/b;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v0, p0, Ld3/b;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
