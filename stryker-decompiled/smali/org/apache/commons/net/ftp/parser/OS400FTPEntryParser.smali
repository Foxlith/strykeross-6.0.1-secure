.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 2
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "yy/MM/dd HH:mm:ss"

    const/4 v2, 0x0

    const-string v3, "OS/400"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 11

    .line 1
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->matches(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_11

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x4

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v5, ""

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v7, " "

    .line 65
    .line 66
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :goto_1
    const/4 v6, 0x5

    .line 81
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const/4 v7, 0x6

    .line 86
    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    :try_start_0
    invoke-super {p0, v5}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    const-string v8, "*STMF"

    .line 98
    .line 99
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    const/16 v9, 0x2f

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    if-eqz v8, :cond_4

    .line 107
    .line 108
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_3

    .line 113
    .line 114
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move v1, p1

    .line 122
    move v4, v10

    .line 123
    goto :goto_8

    .line 124
    :cond_3
    :goto_2
    return-object v1

    .line 125
    :cond_4
    const-string v8, "*DIR"

    .line 126
    .line 127
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_7

    .line 132
    .line 133
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_6

    .line 138
    .line 139
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move v1, p1

    .line 147
    :goto_3
    move v4, v1

    .line 148
    goto :goto_8

    .line 149
    :cond_6
    :goto_4
    return-object v1

    .line 150
    :cond_7
    const-string v8, "*FILE"

    .line 151
    .line 152
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_a

    .line 157
    .line 158
    if-eqz v7, :cond_9

    .line 159
    .line 160
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 161
    .line 162
    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string v5, ".SAVF"

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_8

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_8
    :goto_5
    move v1, v10

    .line 176
    goto :goto_3

    .line 177
    :cond_9
    :goto_6
    return-object v1

    .line 178
    :cond_a
    const-string v8, "*MEM"

    .line 179
    .line 180
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_e

    .line 185
    .line 186
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_b

    .line 191
    .line 192
    return-object v1

    .line 193
    :cond_b
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_d

    .line 198
    .line 199
    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-nez v4, :cond_c

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_c
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 207
    .line 208
    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    goto :goto_5

    .line 213
    :cond_d
    :goto_7
    return-object v1

    .line 214
    :cond_e
    move v1, p1

    .line 215
    :goto_8
    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .line 227
    .line 228
    :catch_1
    const-string v2, "/"

    .line 229
    .line 230
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_f

    .line 235
    .line 236
    invoke-static {v7, p1, v10}, Lorg/bouncycastle/math/ec/a;->c(Ljava/lang/String;II)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    :cond_f
    if-eqz v1, :cond_10

    .line 241
    .line 242
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    const/4 v2, -0x1

    .line 247
    if-le v1, v2, :cond_10

    .line 248
    .line 249
    add-int/2addr v1, p1

    .line 250
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    :cond_10
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :cond_11
    return-object v1
.end method
