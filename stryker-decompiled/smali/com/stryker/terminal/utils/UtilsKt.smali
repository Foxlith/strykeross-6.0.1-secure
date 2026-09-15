.class public final Lcom/stryker/terminal/utils/UtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string v0, "Unable to create directory: "

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {p0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "assetDir"

    .line 9
    .line 10
    invoke-static {p1, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "extractDir"

    .line 14
    .line 15
    invoke-static {p2, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz p2, :cond_5

    .line 59
    .line 60
    array-length v2, p2

    .line 61
    const/4 v3, 0x0

    .line 62
    move v4, v3

    .line 63
    :goto_1
    if-ge v4, v2, :cond_4

    .line 64
    .line 65
    aget-object v5, p2, v4

    .line 66
    .line 67
    new-instance v6, Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_3

    .line 77
    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v8, 0x2f

    .line 87
    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    .line 103
    .line 104
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    .line 107
    :try_start_2
    const-string v8, "input"

    .line 108
    .line 109
    invoke-static {v5, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v8, 0x2000

    .line 113
    .line 114
    new-array v8, v8, [B

    .line 115
    .line 116
    :goto_2
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-ltz v9, :cond_2

    .line 121
    .line 122
    invoke-virtual {v7, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    :try_start_3
    invoke-static {v7, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .line 128
    .line 129
    :try_start_4
    invoke-static {v5, v0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :catchall_1
    move-exception p0

    .line 134
    goto :goto_3

    .line 135
    :catchall_2
    move-exception p0

    .line 136
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 137
    :catchall_3
    move-exception p1

    .line 138
    :try_start_6
    invoke-static {v7, p0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 142
    :goto_3
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 143
    :catchall_4
    move-exception p1

    .line 144
    :try_start_8
    invoke-static {v5, p0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_3
    :goto_4
    const/4 v5, 0x1

    .line 149
    invoke-virtual {v6, v5, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 150
    .line 151
    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    sget-object v0, Lw4/h;->a:Lw4/h;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :goto_5
    new-instance v0, Lw4/d;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_6
    return-object v0
.end method

.method public static final formatSizeInKB(J)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "####.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x400

    cmp-long v1, p0, v1

    const-string v2, " KB"

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v1, p0, v3

    const/high16 v3, 0x44800000    # 1024.0f

    if-gez v1, :cond_1

    long-to-float p0, p0

    div-float/2addr p0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " MB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v4, 0x40000000

    cmp-long v1, p0, v4

    if-gez v1, :cond_2

    long-to-float p0, p0

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " GB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v4, 0x10000000000L

    cmp-long v1, p0, v4

    if-gez v1, :cond_3

    long-to-float p0, p0

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    div-float/2addr p0, v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " TB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object p0, p2

    :goto_1
    invoke-static {p1, p2}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p2, p0

    goto :goto_3

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lv1/f;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_3
    return-object p2
.end method

.method private static final getPathOfDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/stryker/terminal/utils/UtilsKt;->isExternalStorageDocument(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lx4/o;->a:Lx4/o;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    const-string v3, "compile(pattern)"

    .line 10
    .line 11
    const-string v4, ":"

    .line 12
    .line 13
    const-string v5, "docId"

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const/4 v7, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v7}, Lq5/h;->F1(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .line 59
    .line 60
    move p0, v7

    .line 61
    :cond_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-object p0, v9

    .line 102
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_3

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-int/2addr p1, v6

    .line 140
    invoke-static {p0, p1}, Lx4/m;->D0(Ljava/util/List;I)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_3
    new-array p0, v7, [Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, [Ljava/lang/String;

    .line 151
    .line 152
    aget-object p1, p0, v7

    .line 153
    .line 154
    const-string v0, "primary"

    .line 155
    .line 156
    invoke-static {v0, p1}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const/16 v1, 0x2f

    .line 161
    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    aget-object p0, p0, v6

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    goto/16 :goto_5

    .line 193
    .line 194
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v2, "/storage/"

    .line 197
    .line 198
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    aget-object p0, p0, v6

    .line 208
    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    goto/16 :goto_5

    .line 217
    .line 218
    :cond_5
    invoke-static {p1}, Lcom/stryker/terminal/utils/UtilsKt;->isDownloadsDocument(Landroid/net/Uri;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    const/4 v8, 0x0

    .line 223
    if-eqz v0, :cond_6

    .line 224
    .line 225
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    const-string v0, "content://downloads/public_downloads"

    .line 230
    .line 231
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string v1, "valueOf(id)"

    .line 240
    .line 241
    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 245
    .line 246
    .line 247
    move-result-wide v1

    .line 248
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    const-string v0, "withAppendedId(\n    Uri.\u2026lang.Long.valueOf(id)\n  )"

    .line 253
    .line 254
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static {p0, p1, v8, v8}, Lcom/stryker/terminal/utils/UtilsKt;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    goto/16 :goto_5

    .line 262
    .line 263
    :cond_6
    invoke-static {p1}, Lcom/stryker/terminal/utils/UtilsKt;->isMediaDocument(Landroid/net/Uri;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_11

    .line 268
    .line 269
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-static {p1, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v7}, Lq5/h;->F1(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_7

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-static {p1}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    goto :goto_2

    .line 305
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .line 309
    .line 310
    move v2, v7

    .line 311
    :cond_8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_8

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-object p1, v3

    .line 352
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_a

    .line 357
    .line 358
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    :goto_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_a

    .line 371
    .line 372
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_9

    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_9
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    add-int/2addr v0, v6

    .line 390
    invoke-static {p1, v0}, Lx4/m;->D0(Ljava/util/List;I)Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    :cond_a
    new-array p1, v7, [Ljava/lang/String;

    .line 395
    .line 396
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    check-cast p1, [Ljava/lang/String;

    .line 401
    .line 402
    aget-object v0, p1, v7

    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    const v2, 0x58d9bd6

    .line 409
    .line 410
    .line 411
    if-eq v1, v2, :cond_f

    .line 412
    .line 413
    const v2, 0x5faa95b

    .line 414
    .line 415
    .line 416
    if-eq v1, v2, :cond_d

    .line 417
    .line 418
    const v2, 0x6b0147b

    .line 419
    .line 420
    .line 421
    if-eq v1, v2, :cond_b

    .line 422
    .line 423
    goto :goto_4

    .line 424
    :cond_b
    const-string v1, "video"

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_c

    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_c
    sget-object v8, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_d
    const-string v1, "image"

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-nez v0, :cond_e

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_e
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_f
    const-string v1, "audio"

    .line 449
    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_10

    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_10
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 458
    .line 459
    :goto_4
    invoke-static {v8}, Li5/a;->m(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    aget-object p1, p1, v6

    .line 463
    .line 464
    filled-new-array {p1}, [Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    const-string v0, "_id=?"

    .line 469
    .line 470
    invoke-static {p0, v8, v0, p1}, Lcom/stryker/terminal/utils/UtilsKt;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    goto :goto_5

    .line 475
    :cond_11
    move-object p0, v8

    .line 476
    :goto_5
    return-object p0
.end method

.method public static final getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, v0, v0}, Lcom/stryker/terminal/utils/UtilsKt;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lq5/h;->p1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static final isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final runApt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Lj5/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "subCommand"

    .line 7
    .line 8
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "extraArgs"

    .line 12
    .line 13
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "block"

    .line 17
    .line 18
    invoke-static {p4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lg3/b;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v1, v2}, Lg3/b;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v1, Lg3/b;->b:Ljava/lang/Object;

    .line 33
    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    const-string v4, "/data/data/com.zalexdev.stryker/files/usr/bin/apt"

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-object v3, v2

    .line 43
    check-cast v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Lg3/b;->c(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object p2, v2

    .line 52
    check-cast p2, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    new-array p2, p2, [Ljava/lang/String;

    .line 59
    .line 60
    check-cast v2, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v4, p2}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->execute(Ljava/lang/String;[Ljava/lang/String;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->imeEnabled(Z)Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-instance v0, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;

    .line 78
    .line 79
    invoke-direct {v0, p3, p4, p0}, Lcom/stryker/terminal/utils/UtilsKt$runApt$1;-><init>(ZLj5/l;Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->onFinish(Lj5/p;)Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p2, "apt "

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->show(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static synthetic runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/utils/UtilsKt;->runApt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;)V

    return-void
.end method
