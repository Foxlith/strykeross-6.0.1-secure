.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "\"\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    const-string v1, "\t ,="

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method public static final hasBody(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->promisesBody(Lokhttp3/Response;)Z

    move-result p0

    return p0
.end method

.method public static final parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v0}, Lokhttp3/internal/http/HttpHeaders;->readChallengeHeader(Lokio/Buffer;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v4}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    const-string v5, "Unable to parse challenge"

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6, v3}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final promisesBody(Lokhttp3/Response;)Z
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lokhttp3/internal/Util;->headersContentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v4, "Transfer-Encoding"

    invoke-static {p0, v4, v2, v0, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-static {v0, p0}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method

.method private static final readChallengeHeader(Lokio/Buffer;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Buffer;",
            "Ljava/util/List<",
            "Lokhttp3/Challenge;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :goto_1
    if-nez v1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p0, Lokhttp3/Challenge;

    .line 33
    .line 34
    sget-object v0, Lx4/p;->a:Lx4/p;

    .line 35
    .line 36
    invoke-direct {p0, v1, v0}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    const/16 v4, 0x3d

    .line 44
    .line 45
    invoke-static {p0, v4}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x1

    .line 54
    if-nez v2, :cond_8

    .line 55
    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_8

    .line 63
    .line 64
    :cond_3
    new-instance v2, Lokhttp3/Challenge;

    .line 65
    .line 66
    invoke-static {v3}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-ltz v5, :cond_7

    .line 71
    .line 72
    if-eqz v5, :cond_6

    .line 73
    .line 74
    const-string v4, "="

    .line 75
    .line 76
    if-eq v5, v7, :cond_5

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    new-array v7, v5, [C

    .line 84
    .line 85
    :goto_2
    if-ge v6, v5, :cond_4

    .line 86
    .line 87
    aput-char v4, v7, v6

    .line 88
    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    new-instance v4, Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([C)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    const-string v4, ""

    .line 104
    .line 105
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "singletonMap<String, Str\u2026ek + \"=\".repeat(eqCount))"

    .line 117
    .line 118
    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v2, v1, v3}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string p1, "Count \'n\' must be non-negative, but was "

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const/16 p1, 0x2e

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_8
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v4}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    add-int/2addr v6, v5

    .line 167
    :goto_4
    if-nez v3, :cond_9

    .line 168
    .line 169
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-nez v5, :cond_10

    .line 178
    .line 179
    invoke-static {p0, v4}, Lokhttp3/internal/Util;->skipAll(Lokio/Buffer;B)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    move v6, v5

    .line 184
    :cond_9
    if-eqz v6, :cond_10

    .line 185
    .line 186
    if-le v6, v7, :cond_a

    .line 187
    .line 188
    return-void

    .line 189
    :cond_a
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_b

    .line 194
    .line 195
    return-void

    .line 196
    :cond_b
    const/16 v5, 0x22

    .line 197
    .line 198
    invoke-static {p0, v5}, Lokhttp3/internal/http/HttpHeaders;->startsWith(Lokio/Buffer;B)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_c

    .line 203
    .line 204
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    goto :goto_5

    .line 209
    :cond_c
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    :goto_5
    if-nez v5, :cond_d

    .line 214
    .line 215
    return-void

    .line 216
    :cond_d
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/lang/String;

    .line 221
    .line 222
    if-eqz v3, :cond_e

    .line 223
    .line 224
    return-void

    .line 225
    :cond_e
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->skipCommasAndWhitespace(Lokio/Buffer;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_f

    .line 230
    .line 231
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_f

    .line 236
    .line 237
    return-void

    .line 238
    :cond_f
    move-object v3, v0

    .line 239
    goto :goto_4

    .line 240
    :cond_10
    new-instance v4, Lokhttp3/Challenge;

    .line 241
    .line 242
    invoke-direct {v4, v1, v2}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-object v1, v3

    .line 249
    goto/16 :goto_1
.end method

.method private static final readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :goto_0
    sget-object v2, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v2}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v0, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long v10, v2, v8

    cmp-long v4, v6, v10

    if-nez v4, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v0, p0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v0, p0, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readToken(Lokio/Buffer;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1, p2}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method private static final skipCommasAndWhitespace(Lokio/Buffer;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static final startsWith(Lokio/Buffer;B)Z
    .locals 2

    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
