.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 1

    .line 1
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6

    .line 2
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 10

    .line 3
    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    :goto_0
    new-array p2, p2, [C

    const-wide/16 v0, 0x0

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_4

    if-nez v5, :cond_3

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    if-eqz p5, :cond_1

    const/4 v7, 0x1

    move-object v4, p5

    move-wide v5, v0

    move-wide v8, p3

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v5}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    int-to-long v2, v5

    add-long/2addr v0, v2

    if-eqz p5, :cond_1

    move-object v2, p5

    move-wide v3, v0

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v0

    :goto_3
    new-instance p1, Lorg/apache/commons/net/io/CopyStreamException;

    const-string p2, "IOException caught while copying."

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw p1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1

    .line 1
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6

    .line 2
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 7

    .line 3
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 11

    .line 4
    move-object v0, p1

    if-lez p2, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/16 v1, 0x400

    :goto_0
    new-array v7, v1, [B

    const-wide/16 v1, 0x0

    move-object v8, p0

    :goto_1
    :try_start_0
    invoke-virtual {p0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_6

    if-nez v4, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p6, :cond_2

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_2
    const-wide/16 v3, 0x1

    add-long v9, v1, v3

    if-eqz p5, :cond_3

    const/4 v4, 0x1

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    :try_start_1
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide v1, v9

    goto :goto_5

    :cond_3
    :goto_3
    move-wide v1, v9

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1, v7, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    int-to-long v5, v4

    add-long v9, v1, v5

    if-eqz p5, :cond_3

    move-object/from16 v1, p5

    move-wide v2, v9

    move-wide v5, p3

    :try_start_3
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_6
    :goto_4
    return-wide v1

    :goto_5
    new-instance v3, Lorg/apache/commons/net/io/CopyStreamException;

    const-string v4, "IOException caught while copying."

    invoke-direct {v3, v4, v1, v2, v0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw v3
.end method
