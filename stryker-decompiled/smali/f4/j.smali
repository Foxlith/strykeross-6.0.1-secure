.class public abstract Lf4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    const-string v6, "HTTP "

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v8

    :goto_0
    cmp-long v7, v3, v8

    if-lez v7, :cond_1

    cmp-long v12, v10, v3

    if-ltz v12, :cond_1

    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    move-wide v10, v8

    :cond_1
    if-lez v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    cmp-long v14, v12, v8

    if-lez v14, :cond_2

    sub-long v14, v3, v10

    const-wide/32 v16, 0x800000

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    const-string v0, "Not enough free space"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v13, p0

    invoke-virtual {v12, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    const-string v13, "User-Agent"

    invoke-static {}, Lf4/a;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    const-string v13, "Accept-Encoding"

    const-string v14, "identity"

    invoke-virtual {v12, v13, v14}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    cmp-long v13, v10, v8

    if-lez v13, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "bytes="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Range"

    invoke-virtual {v12, v15, v14}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_3
    invoke-static {}, Lf4/a;->a()Lokhttp3/OkHttpClient;

    move-result-object v14

    invoke-virtual {v12}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    invoke-virtual {v14, v12}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v12

    invoke-interface {v12}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v12

    :try_start_0
    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v14

    const/16 v15, 0x1a0

    if-ne v14, v15, :cond_4

    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    const-string v0, "Range rejected, will restart"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_4
    const/16 v15, 0xc8

    const/16 v8, 0xce

    if-eq v14, v15, :cond_5

    if-eq v14, v8, :cond_5

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_5
    :try_start_2
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v0, "Empty response"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_6
    const/4 v9, 0x1

    if-ne v14, v8, :cond_7

    if-lez v13, :cond_7

    move v13, v9

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    :goto_1
    const-wide/16 v18, -0x1

    if-ne v14, v8, :cond_c

    :try_start_3
    const-string v8, "Content-Range"

    invoke-virtual {v12, v8}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    :catch_0
    :cond_8
    :goto_2
    move-wide/from16 v14, v18

    :goto_3
    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_9
    const/16 v14, 0x20

    .line 1
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/16 v15, 0x2d

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ltz v14, :cond_8

    if-ltz v15, :cond_8

    if-gt v15, v14, :cond_a

    goto :goto_2

    :cond_a
    add-int/2addr v14, v9

    :try_start_4
    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_4
    cmp-long v8, v14, v16

    if-ltz v8, :cond_b

    cmp-long v8, v14, v10

    if-eqz v8, :cond_c

    .line 2
    :cond_b
    :try_start_5
    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    const-string v0, "Unexpected range response"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_c
    if-nez v13, :cond_d

    const-wide/16 v10, 0x0

    :cond_d
    :try_start_6
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-lez v8, :cond_f

    if-eqz v13, :cond_e

    move-wide/from16 v18, v10

    goto :goto_5

    :cond_e
    const-wide/16 v18, 0x0

    :goto_5
    add-long v18, v18, v14

    :cond_f
    move-wide/from16 v14, v18

    if-lez v7, :cond_10

    move-wide/from16 v20, v3

    goto :goto_6

    :cond_10
    move-wide/from16 v20, v14

    :goto_6
    :try_start_7
    const-string v8, "SHA-256"

    .line 3
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4
    :try_start_8
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v9, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v13, :cond_12

    const-wide/16 v0, 0x0

    :try_start_9
    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/high16 v13, 0x40000

    new-array v0, v13, [B

    move-wide/from16 v22, v14

    const-wide/16 v16, 0x0

    move-wide v13, v10

    :goto_7
    cmp-long v15, v13, v16

    if-lez v15, :cond_11

    const/high16 v1, 0x40000

    int-to-long v2, v1

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_11

    invoke-virtual {v8, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v2, v2

    sub-long/2addr v13, v2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    const-wide/16 v16, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :cond_11
    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_8

    :cond_12
    move-wide/from16 v22, v14

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :goto_8
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    const/high16 v1, 0x40000

    new-array v1, v1, [B

    const-wide/16 v2, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_14

    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v8, v1, v13, v4}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v14, v4

    add-long/2addr v10, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v24, v14, v2

    const-wide/16 v26, 0x96

    cmp-long v4, v24, v26

    if-ltz v4, :cond_13

    move-wide/from16 v24, v14

    move-wide/from16 v13, v20

    invoke-interface {v5, v10, v11, v13, v14}, Lf4/h;->a(JJ)V

    move-wide/from16 v2, v24

    goto :goto_a

    :cond_13
    move-wide/from16 v13, v20

    :goto_a
    move-wide/from16 v20, v13

    goto :goto_9

    :cond_14
    move-wide/from16 v13, v20

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5
    :try_start_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 6
    :catch_1
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const-string v2, ", expected "

    if-lez v7, :cond_15

    move-wide/from16 v3, p4

    cmp-long v6, v0, v3

    if-eqz v6, :cond_17

    :try_start_c
    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size mismatch: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_15
    const-wide/16 v3, 0x0

    cmp-long v6, v22, v3

    if-lez v6, :cond_16

    cmp-long v3, v0, v22

    if-eqz v3, :cond_17

    :try_start_d
    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_16
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    :try_start_e
    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    const-string v0, "Empty download"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_17
    :try_start_f
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v2, :cond_18

    aget-byte v3, v0, v15

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    if-eqz v1, :cond_19

    .line 8
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    const-string v0, "Checksum mismatch"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_19
    :try_start_10
    invoke-static/range {p1 .. p1}, Lf4/j;->c(Ljava/io/File;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v1, v0}, Lf4/j;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "Could not finalize download"

    invoke-static {v0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    :cond_1a
    :try_start_11
    invoke-static/range {p2 .. p2}, Lf4/j;->c(Ljava/io/File;)V

    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-lez v0, :cond_1c

    invoke-interface {v5, v13, v14, v13, v14}, Lf4/h;->a(JJ)V

    .line 9
    :cond_1c
    new-instance v0, Lf4/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf4/i;-><init>(Ljava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 10
    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    return-object v0

    .line 11
    :goto_c
    :try_start_12
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 12
    :catch_2
    :try_start_13
    throw v0

    .line 13
    :catch_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 14
    :goto_d
    invoke-virtual {v12}, Lokhttp3/Response;->close()V

    throw v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 p1, 0x40000

    :try_start_2
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return v0
.end method

.method public static c(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;
    .locals 9

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    const-string v0, "https://"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ".part"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    const-string v2, "Download failed"

    .line 41
    .line 42
    move v8, v1

    .line 43
    :goto_0
    const/4 v1, 0x3

    .line 44
    if-gt v8, v1, :cond_4

    .line 45
    .line 46
    move-object v1, p0

    .line 47
    move-object v2, p1

    .line 48
    move-object v3, v0

    .line 49
    move-object v4, p2

    .line 50
    move-wide v5, p3

    .line 51
    move-object v7, p5

    .line 52
    :try_start_0
    invoke-static/range {v1 .. v7}, Lf4/j;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;JLf4/h;)Lf4/i;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-boolean v2, v1, Lf4/i;->a:Z

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    return-object v1

    .line 61
    :cond_1
    iget-object v2, v1, Lf4/i;->b:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-string v3, "Checksum"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    invoke-static {v0}, Lf4/j;->c(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    :goto_1
    move-object v2, v1

    .line 94
    :cond_3
    const-wide/16 v3, 0x3e8

    .line 95
    .line 96
    int-to-long v5, v8

    .line 97
    mul-long/2addr v5, v3

    .line 98
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 107
    .line 108
    .line 109
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-static {v0}, Lf4/j;->c(Ljava/io/File;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_5
    :goto_3
    const-string p0, "Refusing non-HTTPS URL"

    .line 121
    .line 122
    invoke-static {p0}, Lf4/i;->a(Ljava/lang/String;)Lf4/i;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method
