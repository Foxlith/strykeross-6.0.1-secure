.class public Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 2
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MMM d yyyy"

    const-string v2, "MMM d HH:mm"

    const-string v3, "UNIX"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->matches(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_8

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/16 v5, 0x14

    .line 26
    .line 27
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const/16 v7, 0x15

    .line 37
    .line 38
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, " "

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v7, 0x16

    .line 51
    .line 52
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const/16 v7, 0x17

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const/16 v8, 0x18

    .line 70
    .line 71
    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    :try_start_0
    invoke-super {v0, v6}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v1, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    :catch_0
    const/4 v6, 0x0

    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/16 v9, 0x2d

    .line 88
    .line 89
    const/4 v10, 0x3

    .line 90
    const/4 v11, 0x2

    .line 91
    if-eq v4, v9, :cond_1

    .line 92
    .line 93
    const/16 v9, 0x6c

    .line 94
    .line 95
    if-eq v4, v9, :cond_0

    .line 96
    .line 97
    packed-switch v4, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    move v9, v6

    .line 101
    move v4, v10

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    :pswitch_0
    move v9, v6

    .line 104
    move v4, v11

    .line 105
    goto :goto_0

    .line 106
    :pswitch_1
    move v4, v2

    .line 107
    move v9, v6

    .line 108
    goto :goto_0

    .line 109
    :pswitch_2
    move v9, v2

    .line 110
    move v4, v6

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    :pswitch_3
    move v4, v6

    .line 113
    move v9, v4

    .line 114
    :goto_0
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 115
    .line 116
    .line 117
    const/4 v12, 0x4

    .line 118
    move v13, v6

    .line 119
    move v14, v12

    .line 120
    :goto_1
    if-ge v13, v10, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v14}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    const-string v10, "-"

    .line 127
    .line 128
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    xor-int/2addr v15, v2

    .line 133
    invoke-virtual {v1, v13, v6, v15}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v15, v14, 0x1

    .line 137
    .line 138
    invoke-virtual {v0, v15}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v15

    .line 146
    xor-int/2addr v15, v2

    .line 147
    invoke-virtual {v1, v13, v2, v15}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v15, v14, 0x2

    .line 151
    .line 152
    invoke-virtual {v0, v15}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v15

    .line 156
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    if-nez v10, :cond_2

    .line 161
    .line 162
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    invoke-static {v10}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-nez v10, :cond_2

    .line 171
    .line 172
    move v10, v2

    .line 173
    goto :goto_2

    .line 174
    :cond_2
    move v10, v6

    .line 175
    :goto_2
    invoke-virtual {v1, v13, v11, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v13, v13, 0x1

    .line 179
    .line 180
    add-int/lit8 v14, v14, 0x4

    .line 181
    .line 182
    const/4 v10, 0x3

    .line 183
    goto :goto_1

    .line 184
    :cond_3
    if-nez v9, :cond_4

    .line 185
    .line 186
    :try_start_1
    const-string v2, "0"

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .line 194
    .line 195
    :catch_1
    :cond_4
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    .line 207
    .line 208
    :catch_2
    if-nez v8, :cond_5

    .line 209
    .line 210
    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_5
    invoke-static {v7, v8}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-ne v4, v11, :cond_7

    .line 219
    .line 220
    const-string v3, " -> "

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    const/4 v4, -0x1

    .line 227
    if-ne v3, v4, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_6
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    add-int/2addr v3, v12

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_7
    :goto_3
    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :goto_4
    return-object v1

    .line 250
    :cond_8
    return-object v3

    .line 251
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
