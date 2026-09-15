.class public final Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BIT_FLAG_ENCRYPTED:I = 0x1

.field private static final BIT_FLAG_UNSUPPORTED_MASK:I = 0x1

.field private static final CENTRAL_FILE_HEADER_SIGNATURE:I = 0x2014b50

.field public static final COMPRESSION_METHOD_DEFLATED:I = 0x8

.field public static final COMPRESSION_METHOD_STORED:I = 0x0

.field private static final END_OF_CENTRAL_DIRECTORY_SIGNATURE:I = 0x6054b50

.field private static final HEADER_ID_EXTENDED_TIMESTAMP:I = 0x5455

.field private static final HEADER_ID_ZIP64_EXTENDED_INFO:I = 0x1

.field private static final LOCAL_FILE_HEADER_SIGNATURE:I = 0x4034b50

.field private static final MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE:J = 0xffffffffL

.field private static final ZIP64_EOCD_RECORD_SIGNATURE:I = 0x6064b50

.field private static final ZIP64_LOCATOR_SIGNATURE:I = 0x7064b50


# direct methods
.method private static final buildIndex(Ljava/util/List;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokio/internal/ZipEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "/"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lokio/internal/ZipEntry;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    const-wide/16 v9, 0x0

    .line 17
    .line 18
    const-wide/16 v11, 0x0

    .line 19
    .line 20
    const-wide/16 v13, 0x0

    .line 21
    .line 22
    const/4 v15, 0x0

    .line 23
    const/16 v16, 0x0

    .line 24
    .line 25
    const-wide/16 v17, 0x0

    .line 26
    .line 27
    const/16 v19, 0x1fc

    .line 28
    .line 29
    const/16 v20, 0x0

    .line 30
    .line 31
    move-object v5, v1

    .line 32
    move-object v6, v0

    .line 33
    invoke-direct/range {v5 .. v20}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/f;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lw4/c;

    .line 37
    .line 38
    invoke-direct {v2, v0, v1}, Lw4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    filled-new-array {v2}, [Lw4/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-static {v4}, Lv1/f;->H(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 52
    .line 53
    .line 54
    aget-object v0, v0, v3

    .line 55
    .line 56
    iget-object v2, v0, Lw4/c;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v0, v0, Lw4/c;->b:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;

    .line 64
    .line 65
    invoke-direct {v0}, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;-><init>()V

    .line 66
    .line 67
    .line 68
    move-object/from16 v2, p0

    .line 69
    .line 70
    invoke-static {v2, v0}, Lx4/m;->C0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lokio/internal/ZipEntry;

    .line 89
    .line 90
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lokio/internal/ZipEntry;

    .line 99
    .line 100
    if-nez v3, :cond_0

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lokio/Path;->parent()Lokio/Path;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-nez v3, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lokio/internal/ZipEntry;

    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    invoke-virtual {v4}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v15, Lokio/internal/ZipEntry;

    .line 134
    .line 135
    const/4 v6, 0x1

    .line 136
    const/4 v7, 0x0

    .line 137
    const-wide/16 v8, 0x0

    .line 138
    .line 139
    const-wide/16 v10, 0x0

    .line 140
    .line 141
    const-wide/16 v12, 0x0

    .line 142
    .line 143
    const/4 v14, 0x0

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const-wide/16 v17, 0x0

    .line 147
    .line 148
    const/16 v19, 0x1fc

    .line 149
    .line 150
    const/16 v20, 0x0

    .line 151
    .line 152
    move-object v4, v15

    .line 153
    move-object v5, v3

    .line 154
    move-object/from16 v21, v15

    .line 155
    .line 156
    move-object/from16 v15, v16

    .line 157
    .line 158
    move-wide/from16 v16, v17

    .line 159
    .line 160
    move/from16 v18, v19

    .line 161
    .line 162
    move-object/from16 v19, v20

    .line 163
    .line 164
    invoke-direct/range {v4 .. v19}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/f;)V

    .line 165
    .line 166
    .line 167
    move-object/from16 v4, v21

    .line 168
    .line 169
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-object v2, v4

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    return-object v1
.end method

.method private static final dosDateTimeToEpochMillis(II)Ljava/lang/Long;
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    shr-int/lit8 v0, p0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v1, v0, 0x7bc

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 v3, p0, 0x1f

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 v4, p0, 0x1f

    shr-int/lit8 p0, p1, 0x5

    and-int/lit8 v5, p0, 0x3f

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v2, v0, -0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static final getHex(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Li5/a;->q(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(this, checkRadix(radix))"

    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lj5/l;)Lokio/ZipFileSystem;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Lj5/l;",
            ")",
            "Lokio/ZipFileSystem;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "not a zip: size="

    const-string v4, "zipPath"

    invoke-static {v0, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "fileSystem"

    invoke-static {v1, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "predicate"

    invoke-static {v2, v4}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v5

    const/16 v7, 0x16

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_9

    const-wide/32 v9, 0x10000

    sub-long v9, v5, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    :goto_0
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v11

    const v12, 0x6054b50

    if-ne v11, v12, :cond_7

    invoke-static {v3}, Lokio/internal/ZipFilesKt;->readEocdRecord(Lokio/BufferedSource;)Lokio/internal/EocdRecord;

    move-result-object v9

    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCommentByteCount()I

    move-result v10

    int-to-long v10, v10

    invoke-interface {v3, v10, v11}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    invoke-interface {v3}, Lokio/Source;->close()V

    const/16 v3, 0x14

    int-to-long v11, v3

    sub-long/2addr v5, v11

    cmp-long v3, v5, v7

    const/4 v11, 0x0

    if-lez v3, :cond_3

    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v5

    const v6, 0x7064b50

    if-ne v5, v6, :cond_2

    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v5

    invoke-interface {v3}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v12

    invoke-interface {v3}, Lokio/BufferedSource;->readIntLe()I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v4, v12, v13}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v6

    const v12, 0x6064b50

    if-ne v6, v12, :cond_0

    invoke-static {v5, v9}, Lokio/internal/ZipFilesKt;->readZip64EocdRecord(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v5, v11}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v5, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported zip: spanned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_2
    :try_start_9
    invoke-static {v3, v11}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :goto_3
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-static {v3, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCentralDirectoryOffset()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getEntryCount()J

    move-result-wide v12

    :goto_5
    cmp-long v6, v7, v12

    if-gez v6, :cond_6

    invoke-static {v5}, Lokio/internal/ZipFilesKt;->readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;

    move-result-object v6

    invoke-virtual {v6}, Lokio/internal/ZipEntry;->getOffset()J

    move-result-wide v14

    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCentralDirectoryOffset()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    invoke-interface {v2, v6}, Lj5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :cond_4
    :goto_6
    const-wide/16 v14, 0x1

    add-long/2addr v7, v14

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :try_start_d
    invoke-static {v5, v11}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lokio/internal/ZipFilesKt;->buildIndex(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lokio/ZipFileSystem;

    invoke-direct {v3, v0, v1, v2, v10}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {v4, v11}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_7
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-static {v5, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :catchall_7
    move-exception v0

    goto :goto_8

    :cond_7
    invoke-interface {v3}, Lokio/Source;->close()V

    const-wide/16 v11, -0x1

    add-long/2addr v5, v11

    cmp-long v3, v5, v9

    if-ltz v3, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    invoke-interface {v3}, Lokio/Source;->close()V

    throw v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_9
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-static {v4, v1}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static synthetic openZip$default(Lokio/Path;Lokio/FileSystem;Lj5/l;ILjava/lang/Object;)Lokio/ZipFileSystem;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    sget-object p2, Lokio/internal/ZipFilesKt$openZip$1;->INSTANCE:Lokio/internal/ZipFilesKt$openZip$1;

    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/ZipFilesKt;->openZip(Lokio/Path;Lokio/FileSystem;Lj5/l;)Lokio/ZipFileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final readEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
    .locals 27

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const-string v0, "<this>"

    .line 4
    .line 5
    invoke-static {v8, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x2014b50

    .line 13
    .line 14
    .line 15
    if-ne v0, v1, :cond_7

    .line 16
    .line 17
    const-wide/16 v0, 0x4

    .line 18
    .line 19
    invoke-interface {v8, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const v1, 0xffff

    .line 27
    .line 28
    .line 29
    and-int v2, v0, v1

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    and-int/2addr v0, v9

    .line 33
    if-nez v0, :cond_6

    .line 34
    .line 35
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    and-int v20, v0, v1

    .line 40
    .line 41
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    and-int/2addr v0, v1

    .line 46
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    and-int/2addr v2, v1

    .line 51
    invoke-static {v2, v0}, Lokio/internal/ZipFilesKt;->dosDateTimeToEpochMillis(II)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v21

    .line 55
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v2, v0

    .line 60
    const-wide v4, 0xffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long v14, v2, v4

    .line 66
    .line 67
    new-instance v10, Lkotlin/jvm/internal/n;

    .line 68
    .line 69
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    int-to-long v2, v0

    .line 77
    and-long/2addr v2, v4

    .line 78
    iput-wide v2, v10, Lkotlin/jvm/internal/n;->a:J

    .line 79
    .line 80
    new-instance v11, Lkotlin/jvm/internal/n;

    .line 81
    .line 82
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-long v2, v0

    .line 90
    and-long/2addr v2, v4

    .line 91
    iput-wide v2, v11, Lkotlin/jvm/internal/n;->a:J

    .line 92
    .line 93
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    and-int/2addr v0, v1

    .line 98
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    and-int v12, v2, v1

    .line 103
    .line 104
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    and-int v13, v2, v1

    .line 109
    .line 110
    const-wide/16 v1, 0x8

    .line 111
    .line 112
    invoke-interface {v8, v1, v2}, Lokio/BufferedSource;->skip(J)V

    .line 113
    .line 114
    .line 115
    new-instance v7, Lkotlin/jvm/internal/n;

    .line 116
    .line 117
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-long v1, v1

    .line 125
    and-long/2addr v1, v4

    .line 126
    iput-wide v1, v7, Lkotlin/jvm/internal/n;->a:J

    .line 127
    .line 128
    int-to-long v0, v0

    .line 129
    invoke-interface {v8, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-static {v6, v2}, Lq5/h;->n1(Ljava/lang/CharSequence;C)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_5

    .line 139
    .line 140
    iget-wide v0, v11, Lkotlin/jvm/internal/n;->a:J

    .line 141
    .line 142
    cmp-long v0, v0, v4

    .line 143
    .line 144
    const-wide/16 v16, 0x0

    .line 145
    .line 146
    const/16 v1, 0x8

    .line 147
    .line 148
    if-nez v0, :cond_0

    .line 149
    .line 150
    int-to-long v2, v1

    .line 151
    move-wide/from16 v22, v2

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    move-wide/from16 v22, v16

    .line 155
    .line 156
    :goto_0
    iget-wide v1, v10, Lkotlin/jvm/internal/n;->a:J

    .line 157
    .line 158
    cmp-long v1, v1, v4

    .line 159
    .line 160
    const/16 v0, 0x8

    .line 161
    .line 162
    if-nez v1, :cond_1

    .line 163
    .line 164
    int-to-long v1, v0

    .line 165
    add-long v2, v22, v1

    .line 166
    .line 167
    :goto_1
    move-object/from16 v22, v10

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_1
    move-wide/from16 v2, v22

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :goto_2
    iget-wide v9, v7, Lkotlin/jvm/internal/n;->a:J

    .line 174
    .line 175
    cmp-long v1, v9, v4

    .line 176
    .line 177
    if-nez v1, :cond_2

    .line 178
    .line 179
    int-to-long v0, v0

    .line 180
    add-long/2addr v2, v0

    .line 181
    :cond_2
    move-wide v9, v2

    .line 182
    new-instance v5, Lkotlin/jvm/internal/l;

    .line 183
    .line 184
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v4, Lokio/internal/ZipFilesKt$readEntry$1;

    .line 188
    .line 189
    move-object v0, v4

    .line 190
    move-object v1, v5

    .line 191
    move-wide/from16 v23, v14

    .line 192
    .line 193
    const/4 v14, 0x0

    .line 194
    move-wide v2, v9

    .line 195
    move-object v15, v4

    .line 196
    move-object v4, v11

    .line 197
    move-object v14, v5

    .line 198
    move-object/from16 v5, p0

    .line 199
    .line 200
    move-object/from16 v25, v11

    .line 201
    .line 202
    move-object v11, v6

    .line 203
    move-object/from16 v6, v22

    .line 204
    .line 205
    move-object/from16 v26, v7

    .line 206
    .line 207
    invoke-direct/range {v0 .. v7}, Lokio/internal/ZipFilesKt$readEntry$1;-><init>(Lkotlin/jvm/internal/l;JLkotlin/jvm/internal/n;Lokio/BufferedSource;Lkotlin/jvm/internal/n;Lkotlin/jvm/internal/n;)V

    .line 208
    .line 209
    .line 210
    invoke-static {v8, v12, v15}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/BufferedSource;ILj5/p;)V

    .line 211
    .line 212
    .line 213
    cmp-long v0, v9, v16

    .line 214
    .line 215
    if-lez v0, :cond_4

    .line 216
    .line 217
    iget-boolean v0, v14, Lkotlin/jvm/internal/l;->a:Z

    .line 218
    .line 219
    if-eqz v0, :cond_3

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 223
    .line 224
    const-string v1, "bad zip: zip64 extra required but absent"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_4
    :goto_3
    int-to-long v0, v13

    .line 231
    invoke-interface {v8, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    .line 236
    .line 237
    const-string v1, "/"

    .line 238
    .line 239
    const/4 v2, 0x0

    .line 240
    const/4 v3, 0x1

    .line 241
    const/4 v4, 0x0

    .line 242
    invoke-static {v0, v1, v4, v3, v2}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0, v11}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v11, v1, v4}, Lq5/h;->o1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    new-instance v1, Lokio/internal/ZipEntry;

    .line 255
    .line 256
    move-object/from16 v2, v22

    .line 257
    .line 258
    iget-wide v2, v2, Lkotlin/jvm/internal/n;->a:J

    .line 259
    .line 260
    move-object/from16 v4, v25

    .line 261
    .line 262
    iget-wide v4, v4, Lkotlin/jvm/internal/n;->a:J

    .line 263
    .line 264
    move-object/from16 v6, v26

    .line 265
    .line 266
    iget-wide v6, v6, Lkotlin/jvm/internal/n;->a:J

    .line 267
    .line 268
    move-object v10, v1

    .line 269
    move-object v11, v0

    .line 270
    move-wide/from16 v14, v23

    .line 271
    .line 272
    move-wide/from16 v16, v2

    .line 273
    .line 274
    move-wide/from16 v18, v4

    .line 275
    .line 276
    move-wide/from16 v22, v6

    .line 277
    .line 278
    invoke-direct/range {v10 .. v23}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 283
    .line 284
    const-string v1, "bad zip: filename contains 0x00"

    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 291
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v3, "unsupported zip: general purpose bit flag="

    .line 295
    .line 296
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v0

    .line 314
    :cond_7
    new-instance v2, Ljava/io/IOException;

    .line 315
    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v4, "bad zip: expected "

    .line 319
    .line 320
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v1, " but was "

    .line 331
    .line 332
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v2
.end method

.method private static final readEocdRecord(Lokio/BufferedSource;)Lokio/internal/EocdRecord;
    .locals 10

    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v2

    and-int/2addr v2, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v5, v3

    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x4

    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result p0

    and-int v9, p0, v1

    new-instance p0, Lokio/internal/EocdRecord;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lokio/internal/EocdRecord;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported zip: spanned"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readExtra(Lokio/BufferedSource;ILj5/p;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/BufferedSource;",
            "I",
            "Lj5/p;",
            ")V"
        }
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    :goto_0
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    cmp-long p1, v0, v2

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const-wide/16 v4, 0x4

    .line 9
    .line 10
    cmp-long p1, v0, v4

    .line 11
    .line 12
    if-ltz p1, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const v4, 0xffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, v4

    .line 22
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    int-to-long v4, v4

    .line 27
    const-wide/32 v6, 0xffff

    .line 28
    .line 29
    .line 30
    and-long/2addr v4, v6

    .line 31
    const/4 v6, 0x4

    .line 32
    int-to-long v6, v6

    .line 33
    sub-long/2addr v0, v6

    .line 34
    cmp-long v6, v0, v4

    .line 35
    .line 36
    if-ltz v6, :cond_2

    .line 37
    .line 38
    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->require(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-interface {p2, v8, v9}, Lj5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    add-long/2addr v8, v4

    .line 69
    sub-long/2addr v8, v6

    .line 70
    cmp-long v2, v8, v2

    .line 71
    .line 72
    if-ltz v2, :cond_1

    .line 73
    .line 74
    if-lez v2, :cond_0

    .line 75
    .line 76
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 81
    .line 82
    .line 83
    :cond_0
    sub-long/2addr v0, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 86
    .line 87
    const-string p2, "unsupported zip: too many bytes processed for "

    .line 88
    .line 89
    invoke-static {p2, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 98
    .line 99
    const-string p1, "bad zip: truncated value in extra field"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 106
    .line 107
    const-string p1, "bad zip: truncated header in extra field"

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    return-void
.end method

.method public static final readLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basicMetadata"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    move-result-object p0

    invoke-static {p0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Lkotlin/jvm/internal/o;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->getLastModifiedAtMillis()Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lkotlin/jvm/internal/o;->a:Ljava/lang/Object;

    new-instance v3, Lkotlin/jvm/internal/o;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/o;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_3

    const-wide/16 v5, 0x2

    invoke-interface {v0, v5, v6}, Lokio/BufferedSource;->skip(J)V

    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    const v6, 0xffff

    and-int v7, v5, v6

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const-wide/16 v7, 0x12

    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->skip(J)V

    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    invoke-interface/range {p0 .. p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v5

    and-int/2addr v5, v6

    invoke-interface {v0, v7, v8}, Lokio/BufferedSource;->skip(J)V

    if-nez p1, :cond_1

    int-to-long v3, v5

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    return-object v2

    :cond_1
    new-instance v2, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;

    invoke-direct {v2, v0, v1, v3, v4}, Lokio/internal/ZipFilesKt$readOrSkipLocalHeader$1;-><init>(Lokio/BufferedSource;Lkotlin/jvm/internal/o;Lkotlin/jvm/internal/o;Lkotlin/jvm/internal/o;)V

    invoke-static {v0, v5, v2}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/BufferedSource;ILj5/p;)V

    new-instance v0, Lokio/FileMetadata;

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->isRegularFile()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->isDirectory()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    move-result-object v10

    iget-object v2, v4, Lkotlin/jvm/internal/o;->a:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    iget-object v1, v1, Lkotlin/jvm/internal/o;->a:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    iget-object v1, v3, Lkotlin/jvm/internal/o;->a:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/Long;

    const/4 v14, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/f;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad zip: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final readZip64EocdRecord(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;
    .locals 8

    const-wide/16 v0, 0xc

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v3

    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-wide/16 v0, 0x8

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v5

    new-instance p0, Lokio/internal/EocdRecord;

    invoke-virtual {p1}, Lokio/internal/EocdRecord;->getCommentByteCount()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/internal/EocdRecord;-><init>(JJI)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: spanned"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final skipLocalHeader(Lokio/BufferedSource;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/FileMetadata;)Lokio/FileMetadata;

    return-void
.end method
